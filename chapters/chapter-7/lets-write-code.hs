module LetsWriteCode where

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xFirst = divMod x 10
        d     = fst xFirst
-- tensDigit = fst . flip divMod 10

hunsD :: Integral a => a -> a
-- hunsD x = d2
--   where d   = fst . flip divMod 10 $ x
--         d2 = div d 10  
hunsD = flip div 10 . fst . flip divMod 10

foldBool :: a -> a -> Bool -> a
-- foldBool x y z
--   | z  = x
--   | otherwise = y
foldBool x y z =  
  case z of
    True -> y
    _ -> x