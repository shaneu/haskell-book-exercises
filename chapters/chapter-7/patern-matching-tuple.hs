module PatternMatchingTuples where

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a, b) (c, d) = ((b, d), (a ,c)) 

addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) = x + y

addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = fst tup + snd tup

fst3 :: (a, b, c) -> a
fst3 (a, _, _) = a

third3 :: (a, b, c) -> c
third3 (_, _, x) = x

k :: (a, b) -> a
k (x, y) = x

k1 = k (4-1, 10)
k2 = k ("three", 1 + 2)
k3 = k (3, True)

f' :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f' (a, _, c) (d, _, f1) = ((a, d), (c, f1)) 

funcz :: (Num a, Eq a) => a -> String
funcZ x = case x + 1 == 1 of
    True -> "Awesome"
    False -> "wut"

pal :: Eq a => [a] -> String
pal xs = 
  case y of
    True -> "yes"
    False -> "no"
  where y = xs == reverse xs