import re, timeit
from collections import namedtuple

RegXe = namedtuple("regXe", "title pattern")
allRegXe = [RegXe(" 1. Email accounts  : ", "[a-zA-Z0-9]+[\._]?[a-zA-Z0-9]*[@]\w+[.]\w+[.]?\w+"),
            RegXe(" 2. Dates : ", "((3[0-1]|2[0-9]|1[1-9]|0?[1-9])\s?(/|:|-)\s?(1[0-2]|0?[1-9])\s?(/|:|-)\s?[0-9]{4})"),
            RegXe(" 3. Phones No : ", "(([+]?(97(0|2)|0))?(-|:|\s)*?\d{2}(-|:|\s)*?\d{3}(-|:|\s)*?\d{4})"),
            RegXe(" 4. Quoted Strings", "(\"[^\"]*\")"),
            RegXe(" 5. Float Numbers", "[+-]?[0-9]*[.][0-9]+"),
            RegXe(" 6. Some Files Extension", ".*[.](cpp|doc|py|jpg|gif|pdf)"),
            RegXe(" 7. IPv6 Addresses", "(([0-9a-fA-F]{4}:){3}[0-9a-fA-F]{4})"),
            RegXe(" 8. String consist of only vowels", "\b[aeiuo]+\b"),
            RegXe(" 9. Multiples of Five", "([0-9]*(0|5))"),
            RegXe("10. Words begins and end with 'a'", "a\w*?a")]

for currentRegXe in allRegXe:

    txtFile = open('file.txt', 'r')
    start = timeit.default_timer()
    matches = re.findall(currentRegXe.pattern, txtFile.read())  # r"""
    stop = timeit.default_timer()
    print(currentRegXe.title, 
        '\n================================='
        '\nNumber of matches: ', len(matches), 
        '\nMatches: ', matches,
        '\nRuntime: (', stop - start, ')sec',
        '\n\n\n')