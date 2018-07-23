module Recursion where

inc :: Num a => a -> a
inc = (+1)

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n = n
incTimes times n = 1 + incTimes (times - 1) n

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 _ b = b
applyTimes n f b = f . applyTimes (n -1) f $ b

incTimes' :: (Eq a, Num a) => a -> a -> a
incTimes' times = applyTimes times (+1)

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2) 

type Numerator = Integer
type Denominator = Integer
type Quotient = Integer

-- dividedBy :: Integral a => a -> a -> (a, a)
-- dividedBy num denom = go num denom 0
--     where go n d count
--         | n < d     = (count, n)
--         | otherwise = go (n - d) d (count + 1)

dividedBy :: Integral a => a -> a -> (a, a) 
dividedBy num denom = go num denom 0 
  where go n d count 
         | n < d = (count, n) 
         | otherwise = go (n - d) d (count + 1)

