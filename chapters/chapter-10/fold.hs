module Fold where

import Data.List

 -- foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b
-- foldr const 0 [1..5]
-- (1 `const` (2 `const` (3 `const` (4 `const` (5 `const`` 0))))) 
-- (1(2(3(4))))
-- (1(2(3)))
-- (1(2))
-- (1)

 -- foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b
-- foldl (filp const) 0 [1..5]
-- (((((0 flip const 1) flip const 2) flip const 3) flip const 4) flip const 5)
-- (5)

shaneSum :: Num a => [a] -> a
shaneSum []       = 0
shaneSum (x : xs) = x + sum xs
