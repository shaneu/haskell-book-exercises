module Arith4 where

-- roundTrip :: (Show a, Read b) => a -> b
-- roundTrip = read . show

-- main :: IO ()
-- main = do
--   print (roundTrip 4::Int)

-- because show and read are opposites in terms of the order of thier 
-- inputs and outputs, that's the same as the result of id val

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)