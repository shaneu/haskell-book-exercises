module ChapExercises where

stops = "pbtdkg"
vowels = "aeiou"

threes :: [b] -> [c] -> [(b, c, b)]
threes xs xs' = [ (x, y, z) | x <- xs, y <- xs', z <- xs ]

threesWithP :: String -> String -> [(Char, Char, Char)]
threesWithP xs xs' = [ (x, y, z) | x <- take 1 xs, y <- xs', z <- xs ]
nouns :: [String]
nouns = ["Plane", "Cherres", "Flame-thrower", "Beef"]
verbs :: [String]
verbs = ["run", "jump", "crying", "fight", "pukeing"]


-- 2. is goingt to divide the sum of the length of the words in the list by the length of the list

seekritFunc :: String -> Int
seekritFunc x = div (sum $ map length $ words x) $ length $ words x



















