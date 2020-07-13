from db import Database
from crawler import Crawler 

d = Database()

minIdQuery = "SELECT MIN(websiteID) FROM website"
maxIdQuery = "SELECT MAX(websiteID) FROM website"

minID = d.executeSelectQuery(minIdQuery)
minID = minID[0][0]

start = minID
end = start + 5

while True:

    websiteQuery = "SELECT websiteURL FROM website WHERE websiteID >= '{0}' AND websiteID < '{1}'".format(start, end)
    websites = d.executeSelectQuery(websiteQuery)

    for website in websites:
        c = Crawler(d)
        c.crawl(website[0])
        del c
    
    start = start + 5
    maxID = d.executeSelectQuery(query)
    if start > maxID:
        start = minID