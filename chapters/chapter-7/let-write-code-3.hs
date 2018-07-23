module LetsWriteCode where

g :: (a -> b) -> (a, c) -> (b, c)
g aToB (a, c) = (aToB a, c)