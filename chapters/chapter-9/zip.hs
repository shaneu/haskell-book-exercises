module Zip where


shaneZip :: [a] -> [b] -> [(a, b)]
shaneZip []       _          = []
shaneZip _        []         = []
shaneZip (x : xs) (x' : xs') = (x, x') : shaneZip xs xs'

shaneZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
shaneZipWith f []       _          = []
shaneZipWith f _        []         = []
shaneZipWith f (x : xs) (x' : xs') = f x x' : shaneZipWith f xs xs'
