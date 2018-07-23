module Rewrite where

myAnd :: [Bool] -> Bool
myAnd []       = True
myAnd (x : xs) = x && myAnd xs


myAndFold :: [Bool] -> Bool
myAndFold = foldr (&&) True

myOr :: [Bool] -> Bool
myOr []       = False
myOr (x : xs) = x || myOr xs

myOrdFold :: [Bool] -> Bool
myOrdFold = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ []       = False
myAny f (x : xs) = if f x then True else myAny f xs

myAnyFold :: (a -> Bool) -> [a] -> Bool
myAnyFold f = foldr (\x z -> f x || z) False

myElem :: Eq a => a -> [a] -> Bool
myElem _ []       = False
myElem e (x : xs) = e == x || myElem e xs

myElemFold :: Eq a => a -> [a] -> Bool
myElemFold e = foldr (\x y -> e == x || y) False

myElemAny :: Eq a => a -> [a] -> Bool
myElemAny e = any (e ==)

myReverse :: [a] -> [a]
myReverse []       = []
myReverse (x : xs) = myReverse xs ++ [x]

myReverseFold :: [a] -> [a]
myReverseFold = foldl (flip (:)) []




myMap :: (a -> b) -> [a] -> [b]
myMap f xs = go f xs []
 where
  go _  []        acc = acc
  go f' (x : xs') acc = f x : go f' xs' acc


myMapFold :: (a -> b) -> [a] -> [b]
myMapFold f = foldr (\x y -> f x : y) []
