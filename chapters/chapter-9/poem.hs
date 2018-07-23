module PoemLines where

firstSen :: String
firstSen = "Tyger Tyger, burning bright\n"
secondSen :: String
secondSen = "In the forests of the night\n"
thirdSen :: String
thirdSen = "What immortal hand or eye\n"
fourthSen :: String
fourthSen = "Could frame thy fearful symmetry"

sentences :: String
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

-- myLines :: String -> [String]
-- myLines ""         = []
-- myLines ('\n' : s) = myLines s
-- myLines s          = takeWhile (/= '\n') s : myLines (dropWhile (/= '\n') s)

breakOnChar :: Char -> String -> [String]
breakOnChar _ ""       = []
breakOnChar c (x : xs) = if x == c
  then breakOnChar c xs
  else takeWhile (/= c) (x : xs) : breakOnChar c (dropWhile (/= c) (x : xs))



shouldEqual :: [String]
shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry"
  ]

main :: IO ()
main = print $ "Are they equal? " ++ show (breakOnChar '\n' sentences == shouldEqual)



