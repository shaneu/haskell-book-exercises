module ComprehendThyLists where

-- mySqr :: [Integer]
-- mySqr = [ x ^ 2 | x <- [1 .. 10] ]

-- ex1 :: [Integer]
-- ex1 = [ x | x <- mySqr, rem x 2 == 0 ]

-- ex2 :: [(Integer, Integer)]
-- ex2 = [ (x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50 ]
-- -- [(1, 64), (1, 81), (1, 100), (4, 81)..., (9, 64)..., ]

-- ex3 :: [(Integer, Integer)]
-- ex3 = take 5 [ (x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50 ]

uppercases :: String -> String
uppercases xs = [ x | x <- xs, x `elem` ['A' .. 'Z'] ]

