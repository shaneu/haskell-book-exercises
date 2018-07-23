module Enum where

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd x y  | x > y     = []
            | x == y    = [x]
            | otherwise = x : eftOrd (succ x) y 

eftBool :: Bool -> Bool -> [Bool]
eftBool x y | x > y     = []
            | x == y    = [x]
            | otherwise = [x, y]

eftInt :: Int -> Int -> [Int]
eftInt x y | x > y     = []
           | x == y    = [x]
           | otherwise = x : eftInt (succ x) y

eftChar :: Char -> Char -> String
eftChar f s | f > s     = []
            | f == s    = [f]
            | otherwise = f : eftChar (succ f) s
