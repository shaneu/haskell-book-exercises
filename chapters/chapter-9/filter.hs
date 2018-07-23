module Filter where

-- 1.
multipleOf3 :: [Integer] -> [Integer]
multipleOf3 = filter (\x -> (x `rem` 3) == 0)

howMany :: [Integer] -> Int
howMany = length . multipleOf3

shaneWords :: String -> [String]
shaneWords ""         = []
shaneWords (' ' : xs) = words xs
shaneWords s          = takeWhile (/= ' ') s : words (dropWhile (/= ' ') s)

noArticles :: [String] -> [String]
noArticles = filter (`notElem` ["the", "a", "an"])

removeArticleFromString :: String -> [String]
removeArticleFromString = noArticles . shaneWords



