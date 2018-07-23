module Sum where

shaneSum :: Num a => [a] -> a
shaneSum []       = 0
shaneSum (x : xs) = x + shaneSum xs

shaneLength :: [a] -> Int
shaneLength []       = 0
shaneLength (_ : xs) = 1 + shaneLength xs

shaneConcat :: [[a]] -> [a]
shaneConcat []       = []
shaneConcat (x : xs) = x ++ shaneConcat xs
