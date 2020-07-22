import os
import timeit
import logging
from multiprocessing import Process
from text import Text


if __name__ == '__main__':

     
    try:

        start = timeit.default_timer()
        with open("data.txt", "r") as file:
            data = file.read()
        
        text = Text(data)
        
        # (I) Sequential Execution
        # text.findNumerical()
        # text.findDate()
        # text.findQuestion()
        # text.findSpecialChar()


        # (II) Multiprocessing Execution
        procs = []

        proc = Process(target=text.findNumerical) 
        procs.append(proc)
        proc.start()

        proc = Process(target=text.findDate)  
        procs.append(proc)
        proc.start()


        proc = Process(target=text.findQuestion)  
        procs.append(proc)
        proc.start()

        proc = Process(target=text.findSpecialChar)  
        procs.append(proc)
        proc.start()

        # complete the processes
        for proc in procs:
            proc.join()

    
        stop = timeit.default_timer()
        print("\nExecution time: ", stop - start)

    except Exception as exception:

        msg = "EXCEPTION: " + str(exception)
        logging.basicConfig(filename='logFile.log', filemode='w',format='%(asctime)s - %(message)s', level=logging.INFO)
        logging.info(msg) 
