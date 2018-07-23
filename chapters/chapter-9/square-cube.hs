module SquareCube where

mySqr :: [Integer]
mySqr = [ x ^ 2 | x <- [1 .. 5] ]

myCube :: [Integer]
myCube = [ y ^ 3 | y <- [1 .. 5] ]

tuples :: [(Integer, Integer)]
tuples = [ (x, y) | x <- mySqr, y <- myCube ]

tuples2 :: [(Integer, Integer)]
tuples2 = [ (x, y) | x <- mySqr, y <- myCube, x < 50, y < 50 ]

tuples3 :: Int
tuples3 = length [ (x, y) | x <- mySqr, y <- myCube, x < 50, y < 50 ]