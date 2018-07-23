module WordNumber where

import Data.List (intercalate)

digitToWord :: Int -> String
digitToWord n = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"] !! n

digits :: Int -> [Int]
digits x = go x []
 where
  go n xs | n > 0     = go (div n 10) (mod n 10 : xs)
          | otherwise = xs

mapWords :: Int -> String
mapWords = intercalate "-". map digitToWord . digits

