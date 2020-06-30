import os, re
from collections import deque 
from xmlElement import XmlElement

class XmlTree:

    def __init__(self, root=None, size=0):
        self.root = root
        self.size = size

    # setter and getter
    def setRoot(self, root):
        self.root = root 

    def setSize(self, size):
        self.size = size 

    def getRoot(self): 
        return self.root

    def getSize(self): 
        return self.size 

    # try it and print a proper format
    def toString(self):
        print("Root: " + self.root + "\n" + "Size: " + self.size + "\n")


    @staticmethod 
    def extractTextBetween(tag1, tag2):
        xmlFile.seek(0)
        pattern = tag1 + "([^<]+)" + tag2
        obj = re.search(pattern, xmlFile.read())
        if obj.group(1).strip() != "":
            return obj.group(1).strip()


    @staticmethod
    def extractAttributes(tag):
        # find attributes within a tag and return them as {} with name dic
        attributes = re.findall("([^=\s]*)=\"([^=]*)\"", tag) 
        dic = {}
        for name, value in attributes:
            dic[name] = value
        return dic


    @staticmethod 
    def extractTagName(tag):
        tagName = tag.replace("<", "").replace(">", "").split()[0]
        return tagName

    @staticmethod
    def storeAllTags():
        # find all tags in the file and return them as [] with name tags
        xmlFile.seek(0)
        tags = re.findall("<[^>]*>", xmlFile.read()) 
        return tags

    @staticmethod
    def createFromFile(filePath):
        x = XmlTree() 
        if os.path.isfile(filePath):
            global xmlFile 
            xmlFile= open(filePath, 'r')
            
            tags = XmlTree.storeAllTags()
            
            elementsStack = deque() 
            tagsStack = deque()

            if len(tags) >= 1: # file not empty, and contains one tag at least, whcih is Root Tag
                root = XmlTree.extractTagName(tags[0])
                # (len(alltags)/2.0 + selfclosing/2.0) double addition but you should handle the self-closing tags
                size = len(tags) / 2
                rootReference = XmlElement(root)
                currentTree = XmlTree(rootReference, size)
                # currentChildren = []

                # assume proper xml syntax
                for i in range(len(tags)):
                    if i == len(tags) - 1: #root closing tag
                        break
                    
                    currentName = XmlTree.extractTagName(tags[i])
                    if currentName[0] == '/':
                        # print("parent", currentElement.getParent().getName() , "==> child", currentElement.getName())
                        currentElement.getParent().addChild(currentElement.getName())
                        # currentChildren = []
                        elementsStack.pop()
                        tagsStack.pop()
                    else:
                                                
                        currentAttributes = XmlTree.extractAttributes(tags[i])
                        currentText = XmlTree.extractTextBetween(tags[i], tags[i+1]) # solve losing data case, by enforce currentElement to created for just opening tags
                        
                        if len(elementsStack) == 0:
                            currentParent = None
                        else:    
                            currentParent = elementsStack[-1]
                        
                        currentElement = XmlElement(name=currentName, parent=currentParent, attributes=currentAttributes, text=currentText)
                        if len(tagsStack)>0 and currentName != tagsStack[-1]:
                            elementsStack[-1].addChild(currentElement)
                        
                        currentElement.toString()
                        elementsStack.append(currentElement)
                        tagsStack.append(currentName)
                        

                print(currentTree.getRoot().getName(), "=>", currentTree.getRoot().getChildren()[5].getName())
                
                return currentTree
        else:
            print("file does not exists")
            return None
            
            
            
        # It should read the file whose path is given, build the tree, and return it.

    def saveToFile(self, filePath):
        try:
            xmlFile = open(filePath, 'w')

            #add the code

            print("File is created successfully :)")
        except IOError:
            print("Unable to write on/ create file")
        



    # we need a documentation for everything (functions, attributes, files, etc...)
    # print tab when a nested tags appear