module Which where

data Which a = ThisOne a | ThatOne a deriving Show

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a' 
  (==) (ThatOne a) (ThatOne a') = a == a' 
  (==) _ _                      = False