module ThyFearfulSymmetry where

myWords :: String -> [String]
myWords ""        = []
myWords (' ' : s) = myWords s
myWords s         = takeWhile (/= ' ') s : myWords (dropWhile (/= ' ') s)


mySplit :: String -> [String]
mySplit ""          = []
mySplit (delim : s) = mySplit s
mySplit s           = takeWhile (/= delim) : mySplit (dropWhile (/= delim) s)



