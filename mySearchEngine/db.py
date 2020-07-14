import environment
import mysql.connector as mysql
import logging

class Database:

    def __init__(self):
        self.host = environment.host
        self.user = environment.user
        self.password = environment.password
        self.database = environment.database
        Database.connection = self.connectDB()

    def connectDB(self):
    
        connection = None

        try:    
            connection = mysql.connect(host = self.host, user = self.user, password = self.password, database = self.database)
        except Exception as exception:
            msg = "DATABASE EXCEPTION: " + str(exception)
            logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
            logging.info(msg)     
        return connection

    def executeSelectQuery(self, query):

        connection = Database.connection
        cursor = connection.cursor()
        rows = []
        try:
            cursor.execute(query)
            rows = cursor.fetchall()

        except Exception as exception:
            msg = "QUERY EXCEPTION IN: {0} --> {1}".format(query, str(exception))
            logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
            logging.info(msg) 

        finally:
            cursor.close()
            del cursor

        return rows

    # insert update delete  => change function name
    def executeInsertQuery(self, query):
        
        connection = Database.connection
        cursor = connection.cursor()
        result = False

        try:
            cursor.execute(query)
            connection.commit()
            result = True

        except Exception as exception:
            msg = "DATABASE EXCEPTION IN: {0} --> {1}".format(query, str(exception))
            logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
            logging.info(msg)

            try:
                connection.rollback()
            except Exception as exception:
                msg = "ROLLBACK EXCEPTION IN: {0} --> {1}".format(query, str(exception))
                logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
                logging.info(msg)

        finally:
            cursor.close()
            del cursor

        return result
