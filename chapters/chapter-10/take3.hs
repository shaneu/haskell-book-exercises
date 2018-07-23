module Take3 where

-- take3 :: [String] -> String
-- take3 = foldr (\a b -> (++) (take 3 a) b) ""
f :: [a] -> [a] -> [a]
f a b = take 3 a ++ b

take3 :: [String] -> String
take3 = foldr f ""





























