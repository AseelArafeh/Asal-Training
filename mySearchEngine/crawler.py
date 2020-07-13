import requests as req
from bs4 import BeautifulSoup
from db import Database

class Crawler:

    def __init__(self, database = Database()):
        self.database = database

    def readPage(self, url):
        try:
            resp = req.get(url, timeout=10)
            soup = BeautifulSoup(resp.text, 'html.parser')
            return soup
        except Exception as e:
            return None

        def getPageURLs(self, url, soup):
        urls = {""} 
        href_tags = soup.find_all('a', href=True)
        for a in href_tags:
            # to avoid circular refrencing
            if (a['href'] == "" or a['href'] == "#" or a['href'] == "/" or a['href'] == url): 
                continue

            # if start with slash then add url name
            if (a['href'][0] == '/'):
                a['href'] = url + a['href']

            urls.add(a['href'])
        return urls

    def getWebsiteID(self, url):
        query = "SELECT websiteID FROM website WHERE websiteURL = '{0}'".format(url)
        websiteID = self.database.executeSelectQuery(query)
        return websiteID

    def insertWebsite(self, url):
        query = "INSERT INTO website (websiteURL) VALUES ('{0}')".format(url)
        result = self.database.executeInsertQuery(query)
        return result

    def getTagContentID(self, tagContent):
        query = "SELECT tagContentID FROM tagContent WHERE tagContent = '{0}'".format(tagContent)
        tagContentID = self.database.executeSelectQuery(query)
        return tagContentID

    def insertTagContent(self, tagContent):
        query = "INSERT INTO tagContent (tagContent) VALUES ('{0}')".format(tagContent)
        result = self.database.executeInsertQuery(query)
        return result

    def insertHyperLink(self, fromWebsiteID, toWebsiteID):
        query = "INSERT INTO hyperlink (fromWebsiteID, toWebsiteID) VALUES ('{0}', '{1}')".format(fromWebsiteID, toWebsiteID)
        result = self.database.executeInsertQuery(query)
        return result 

    def getTags(self):
        query = "SELECT * FROM htmlTag"
        tags = self.database.executeSelectQuery(query)
        return tags

    def getSpecificTag(self, soup, url, tag):
        all = soup.find_all(tag)

        return all
    def filterTagContent(self, content):
        # update this array and add it to database
        ignoredWords = ['is', 'are', 'am', 'has', 'have', 'was', 'were', 'she', 'he', 'it', 'i', 'they', 'them', 'us',
                'a', 'an', 'the', 'this', 'that', 'those', 'their', 'will', 'would', 'should', 'shall']
        filteredContent = ""
        contentWords = content.split()
        for word in contentWords:
            if word not in ignoredWords:
                filteredContent += word
                filteredContent += " "
            
        filteredContent = filteredContent.strip()
        return filteredContent

    def insertWebsiteTag(self, WebsiteID, tagContentID, tagID):
        query = "INSERT INTO website_tag (WebsiteID, tagContentID, tagID) VALUES ('{0}', '{1}', '{2}')".format(WebsiteID, tagContentID, tagID)
        result = self.database.executeInsertQuery(query)
        return result

    def crawl(self, url):
        document = self.readPage(url)
        currentWebsiteID = self.getWebsiteID(url)
        if (currentWebsiteID == []): 
            if( self.insertWebsite(url) == True):
                currentWebsiteID = self.getWebsiteID(url)
        currentWebsiteID = currentWebsiteID[0][0]
        urls = self.getPageURLs(url, document)
    
        for u in urls:
            uID = self.getWebsiteID(u)
            if (uID == []):
                if( self.insertWebsite(u) == True):
                    uID = self.getWebsiteID(u)
            uID = uID[0][0]
            self.insertHyperLink(currentWebsiteID, uID)

        tags = self.getTags()
        for tag in tags:
            all = self.getSpecificTag(document, url, tag[1])
            for a in all:
                filteredContent = self.filterTagContent(a.text)

                currentContentID = self.getTagContentID(filteredContent)
                if (currentContentID == []):
                    if( self.insertTagContent(filteredContent) == True):
                        currentContentID = self.getTagContentID(filteredContent)
                 
                currentContentID = currentContentID[0][0]
                self.insertWebsiteTag(currentWebsiteID, currentContentID, tag[0])