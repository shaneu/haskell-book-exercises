module TwoIntegers where

-- data TwoIntegers = Two Integer Integer deriving Show

-- instance Eq TwoIntegers where
--   (==) (Two 1 1) (Two 1 1) = True
--   (==) (Two 1 2) (Two 1 2) = True
--   (==) (Two 2 3) (Two 2 3) = True
--   (==) (Two 2 4) (Two 2 4) = True
--   (==) (Two _ _) (Two _ _) = False

data TwoIntegers = Two Integer Integer deriving Show

instance Eq TwoIntegers where 
  (==) (Two a b) (Two a' b') = a == a' && b == b'