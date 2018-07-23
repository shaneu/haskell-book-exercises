module BottomMaddness where

import Data.Bool(bool)

one :: [Integer]
one = [ x ^ y | x <- [1 .. 5], y <- [2, undefined] ]

two :: [Integer]
two = take 1 [ x ^ y | x <- [1 .. 5], y <- [2, undefined] ]

three :: Int
three = length [1, 2, undefined]

four :: Int
four = length $ [1, 2, 3] ++ undefined

-- 1. NF
-- 2. neither
-- 3. WHNF
-- 5. WHNF
-- 6. neither
-- 7. neither

isItMystery :: String -> [Bool]
isItMystery = map (`elem` "aeiou")

-- map (\x -> if x == 3 then (-x) else x) [1..10]

foldBool :: [Integer] -> [Integer]
foldBool = map (\x -> bool x (-x) (x == 3))

booly :: a -> a -> Bool -> a
booly x y p = if p then y else x

shaneFilter :: (a -> Bool) -> [a] -> [a]
shaneFilter _ []       = []
shaneFilter f (x : xs) = booly (shaneFilter f xs) (x : shaneFilter f xs) (f x)


otherFilter :: (a -> Bool) -> [a] -> [a]
otherFilter _ [] = []
otherFilter pred (x : xs) | pred x    = x : otherFilter pred xs
                          | otherwise = otherFilter pred xs
