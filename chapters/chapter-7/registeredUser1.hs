module RegisteredUser1 where 

newtype Username = Username String

newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser | RegisteredUser Username AccountNumber

printUser :: User -> IO ()
printUser UnregisteredUser = putStrLn "Oh fuck, you're an UnregisteredUser"
printUser (RegisteredUser
            (Username name)
            (AccountNumber acctNum)) = putStrLn $ name ++ " " ++ show acctNum