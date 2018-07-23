module StandardFunctions where

myAnd :: [Bool] -> Bool
myAnd []       = True
myAnd (x : xs) = x && myAnd xs

myOr :: [Bool] -> Bool
myOr []       = False
myOr (x : xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = myOr . map f

myElem :: Eq a => a -> [a] -> Bool
-- myElem _ []       = False
-- myElem e (x : xs) = e == x || myElem e xs
myElem e = myAny (== e)

-- myReverse :: [a] -> [a]
-- myReverse xs = go [] xs
--  where
--   go acc (x' : xs') | null x'   = acc
--                     | otherwise = go xs' (x' : acc)

myReverse :: [a] -> [a]
myReverse []       = []
myReverse (x : xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish []       = []
squish (x : xs) = x ++ squish xs

shaneConcat :: [a] -> [a] -> [a]
shaneConcat []       xs' = xs'
shaneConcat (x : xs) xs' = x : shaneConcat xs xs'

squishMap :: (a -> [b]) -> [a] -> [b]
-- squishMap f = squish . map f
squishMap _ []       = []
squishMap f (x : xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x : x' : []) = if f x x' == LT then x' else x
myMaximumBy f (x : x' : xs) | f x x' == LT = myMaximumBy f (x' : xs)
                            | otherwise    = myMaximumBy f (x : xs)

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f = myMaximumBy (flip f)

myMaximum :: Ord a => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: Ord a => [a] -> a
myMinimum = myMinimumBy compare

