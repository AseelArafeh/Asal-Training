class XmlElement:
# name: (string), parent: XmlElement, children (list of XmlElement), attributes (dictionary), text (string).


    def __init__(self, name, parent=None, children=[], attributes={}, text=""):
        self.name = name
        self.parent = parent
        self.children = children
        self.attributes = attributes
        self.text = text

    # setter and getter
    def getName(self): 
        return self.name 

    def getParent(self): 
        return self.parent 

    def getChildren(self): 
        return self.children 
    
    def getAttributes(self): 
        return self.attributes 
    
    def getText(self): 
        return self.text 

    def setName(self, name): 
        self.name = name 
        # self.name = self.name + name 

    def setParent(self, parent): 
        self.name = parent 
    
    def setChildren(self, children): 
        self.children = children 
    
    def setAttributes(self, attributes): 
        self.attributes = attributes 
    
    def setText(self, text): 
        self.text = text 

    def addChild(self, child): 
        self.children.append(child) 

    # try it and print a proper format
    def toString(self):
        print("Name: " + str(self.name) + "\n" + "Parent: " + str(self.parent) + "\n" + "Children: " +
              str(self.children) + "\n" + "Attributes: " + str(self.attributes) + "\n" + "Text: " + str(self.text) + "\n")



    # we need a documentation for everything (functions, attributes, files, etc...)
    # handle two type of tags (with closing , self closing)
    # handle the special symbols
    # handle comments in xml
    #self closing tags (	<element /><element attr="at1" at="atr2/>)