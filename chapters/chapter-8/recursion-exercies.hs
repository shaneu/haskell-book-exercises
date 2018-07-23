module Recursion where

data DividedResult = Result Integer | DividedByZero

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d c
          | n < d = (c, n)
          | otherwise = go (n - d) d (c + 1)

-- 1. dividedBy 15 2
--    go 15 2 0  
--    go 13 2 1
--    go 11 2 2
--    go 9 2 3
--    go 7 2 4
--    go 5 2 5
--    go 3 2 6
--    go 1 2 7 = (7, 1)

-- 2. 
sumToN :: (Eq a, Num a) => a -> a
sumToN 0 = 0
sumToN n = sumToN (n - 1) + n
           
-- 3.
multiplyBy :: Integral a => a -> a -> a
multiplyBy _ 0 = 0
multiplyBy n times = n + multiplyBy n (times - 1)

-- 4.
mc91 :: (Num a, Ord a) => a -> a
mc91 n  
    | n > 100 = n - 10 
    | otherwise = mc91 $ mc91 $ n + 11
