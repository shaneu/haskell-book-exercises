module TisAnInteger where

newtype TisAnInteger = TisAn Integer deriving Show

instance Eq TisAnInteger where
  (==) (TisAn a)  (TisAn b) = a == b
