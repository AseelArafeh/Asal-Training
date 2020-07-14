from db import Database
from crawler import Crawler 

d = Database()

if d.connection is not None:

    minIdQuery = "SELECT MIN(websiteID) FROM website"
    maxIdQuery = "SELECT MAX(websiteID) FROM website"

    minID = d.executeSelectQuery(minIdQuery)

    if minID[0][0] is not None:
        minID = minID[0][0]

        start = minID
        end = start + 5

        while True:

            websiteQuery = "SELECT websiteURL, websiteID FROM website WHERE websiteID >= '{0}' AND websiteID < '{1}'".format(start, end)
            websites = d.executeSelectQuery(websiteQuery)

            if websites is not []:
                for website in websites:
                    
                    print(website[1])
                    print(website[0])
                    c = Crawler(d)
                    c.crawl(website[0])
                    del c
                start = start + 5  
                end = start + 5
                maxID = d.executeSelectQuery(maxIdQuery)
                if maxID[0][0] is not None:
                    maxID = maxID[0][0]
                    if start > maxID:
                        start = minID
                        end = start + 5