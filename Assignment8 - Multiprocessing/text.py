import logging
import re


class Text():


    def __init__(self, content):
        """
        Creates a Text object.
        """
        self.content = content
        

    def findNumerical(self):
        """
        Finds the numerical values, including both integers & floats.
        :return: list
        """
        numericals = []
        
        try:    
            pattern = re.compile("\\b[\d]*[.,]?[\d]+\\b")
            numericals = pattern.findall(self.content)
        except Exception as exception:
            msg = "EXCEPTION: " + str(exception)
            logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
            logging.info(msg)  

        return numericals


    def findDate(self):
        """
        Finds the Date/Time stamps.
        :return: list
        """
        dates = []

        try:    
            pattern = re.compile("\d{4}[/:-]\d{2}[/:-]\d{2}T\d{2}:\d{2}:\d{2}")
            dates = pattern.findall(self.content)
        except Exception as exception:
            msg = "EXCEPTION: " + str(exception)
            logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
            logging.info(msg)  

        return dates


    def findQuestion(self):
        """
        Finds the Question statements, like for instance: “Why would we do that?”.
        :return: list
        """
        questions = []

        try:    
            pattern = re.compile("\"[^\"]+\?\"")
            questions = pattern.findall(self.content)
        except Exception as exception:
            msg = "EXCEPTION: " + str(exception)
            logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
            logging.info(msg)  

        return questions


    def findSpecialChar(self):
        """
        Finds the total count of any special characters like: /,*&^%$# …etc.
        :return: integer
        """
        specialChars = []

        try:    
            pattern = re.compile("[/,*&^%$#@!~']")
            specialChars = pattern.findall(self.content)
        except Exception as exception:
            msg = "EXCEPTION: " + str(exception)
            logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
            logging.info(msg)  

        return len(specialChars)