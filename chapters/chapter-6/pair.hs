module Pair where

data Pair a = Pair a a deriving Show

instance Eq a => Eq (Pair a) where
  (==) (Pair a a') (Pair b b') = a == a' && b == b'