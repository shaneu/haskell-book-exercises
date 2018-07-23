module ChapterEx where

import Data.Char

filterUppercase :: String -> String
filterUppercase = filter isUpper

upped :: String
upped = filterUppercase "HbEfLrLxO"

capitalizeFirst :: String -> String
capitalizeFirst ""       = ""
capitalizeFirst (x : xs) = toUpper x : xs

shout :: String -> String
shout ""       = ""
shout (x : xs) = toUpper x : shout xs

shaneHead :: String -> Char
shaneHead (x : _) = toUpper x

capFirst :: String -> Char
capFirst = toUpper . head 
