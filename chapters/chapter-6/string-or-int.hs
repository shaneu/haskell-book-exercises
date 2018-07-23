module StringOrInt where

data StringOrInt = TisAnInt Int | TisAString String deriving Show

instance Eq StringOrInt where
  (==) (TisAString a) (TisAString a') = a == a'
  (==) (TisAnInt v) (TisAnInt v')     = v == v'
  (==) _ _                            = False