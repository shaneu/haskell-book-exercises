module HOFS where

data Employee = Coder
              | Manager
              | Veep
              | CEO
              deriving (Eq, Ord, Show)

reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' = putStrLn $ show e ++ " is the boss of " ++ show e'

-- employeeRank :: Employee -> Employee -> IO ()
-- employeeRank e e' = 
--   case compare e e' of
--     GT -> reportBoss e e'
--     EQ -> putStrLn "Neither employee\
--                     \ is the boss"
--     LT -> flip reportBoss e e'

employeeRank :: (Employee 
                -> Employee 
                -> Ordering)
                -> Employee
                -> Employee
                -> IO ()
employeeRank f e e' = 
  case f e e' of
    GT -> reportBoss e e'
    EQ -> putStrLn "Neither employee \
                    \ is the boss"
    LT -> flip reportBoss e e'

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10
oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1
oneIsTwo = (flip dodgy) 2

numbers x 
    | x < 0   = -1
    | x == 0  = 0
    | x > 0   = 1

res = negate . sum $ [1,2,3,4,5]
