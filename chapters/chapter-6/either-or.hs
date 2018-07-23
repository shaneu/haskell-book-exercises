module EitherOr where

data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b)  where
  (==) (Hello a) (Hello a')     = a == a'
  (==) (Goodbye a) (Goodbye a') = a == a'
  (==)  _ _                     = False

check' :: Eq a => a -> a -> Bool
check' a a' = a == a' 