from xmlElement import XmlElement
from xmlTree import XmlTree
from collections import deque 


if __name__ == "__main__":

    inputFilePath = './../testingFile.xml'
    outputFilePath = './../output.xml'
    currentTree = XmlTree.createFromFile(inputFilePath)
    if currentTree is not None:
        currentTree.saveToFile(outputFilePath)
