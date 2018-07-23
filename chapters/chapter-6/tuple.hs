module Tuple where

data Tuple a b = Tuple a b deriving Show

instance (Eq a, Eq b) => Eq (Tuple a b) where 
  (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'
