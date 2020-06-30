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
               
                isRoot = 1
                # currentChildren = []
                ########### isRoot = 1  since root refrence passed not equal first node which pushed to stack
                # assume proper xml syntax
                for i in range(len(tags)):
                    if i == len(tags) - 1: #root closing tag
                        break
                    
                    currentName = XmlTree.extractTagName(tags[i])
                    if currentName[0] == '/':
                        #print("parent: ", currentElement.getParent().getName() , "==> child: ", currentElement.getName())
                        currentElement.getParent().addChild(currentElement)
                        # currentChildren = []
                        elementsStack.pop()
                        tagsStack.pop()
                    else:
                                                
                        currentAttributes = XmlTree.extractAttributes(tags[i])
                        currentText = XmlTree.extractTextBetween(tags[i], tags[i+1]) # solve losing data case
                        
                        if len(elementsStack) == 0:
                            currentParent = None
                        else:    
                            currentParent = elementsStack[-1]
                        
                        currentElement = XmlElement(name=currentName, parent=currentParent, attributes=currentAttributes, text=currentText)
                        
                        if isRoot:
                            isRoot = 0
                            #root = XmlTree.extractTagName(tags[0])
                            # (len(alltags)/2.0 + selfclosing/2.0) double addition but you should handle the self-closing tags
                            size = len(tags) / 2
                            #rootReference = XmlElement(root)
                            currentTree = XmlTree(currentElement, size)
                        
                        # if len(tagsStack)>0 and currentName != tagsStack[-1]:
                        #     elementsStack[-1].addChild(currentElement)
                        
                        #print(currentElement)
                        #currentElement.toString()
                        elementsStack.append(currentElement)
                        tagsStack.append(currentName)
                        #print(elementsStack[-1] , tagsStack[-1])

                        

                # print(currentTree.getRoot(), "=>", currentTree.getRoot().getChildren()[0])
                
                return currentTree
        else:
            print("file does not exists")
            return None
            
            
            
    # It should read the file whose path is given, build the tree, and return it.

    def creatOpenTagwithAttributes(self, node):
        result = "<" + str(node.getName()) + str(node.getAttributes()) + ">"  # edit printing attr here, to be printed if there attr was not empty! and print it with its correct format
        return result

    def creatCloseTag(self, node):
        result = "</" + node.getName() + ">"
        return result

    def dfs(self, node):
        # print tabs
        openWithAttr = self.creatOpenTagwithAttributes(node)
        text = node.getText()
        print(openWithAttr, text)
        
        for i in range(len(node.getChildren())):
            self.dfs(node.getChildren()[i])
        close = creatCloseTag(node)
        print(close)

    # It should save the current tree to the external file whose path is given.
    def saveToFile(self, filePath):
        try:
            global xmlFile 
            xmlFile = open(filePath, 'w')
            print(self.getRoot().getChildren()[0].getName())
            #print(self.getRoot().getChildren())
            print(self.getRoot().getName())
            self.dfs(self.getRoot()) # without self

            print("File is created successfully :)")
        except IOError:
            print("Unable to write on/ create file")


    # we need a documentation for everything (functions, attributes, files, etc...)
    # print tab when a nested tags appear
    # try cases for same name for sibling elements// also for parent and its child