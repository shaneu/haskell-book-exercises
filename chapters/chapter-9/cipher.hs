module Cipher where

import Data.Char

-- toOrd :: Char -> Int
-- toOrd = ord

-- toChar :: Int -> Char
-- toChar = chr


-- ucShifter :: Int -> Int -> Int
-- ucShifter shft i = mod (i + shft) 90

-- lcShifter :: Int -> Int -> Int
-- lcShifter shft i = mod (i + shft) 122

-- shifter :: Int -> Int -> Int
-- shifter shft i | isSpace (chr i) = i
--                | i >= 97         = lcShifter shft i
--                | otherwise       = ucShifter shft i

shifter :: Int -> Char -> Char
shifter n c
  | c `elem` ['a' .. 'z'] = chr $ ord 'a' + (ord c - ord 'a' + n) `mod` 26
  | c `elem` ['A' .. 'Z'] = chr $ ord 'A' + (ord c - ord 'A' + n) `mod` 26
  | otherwise             = c

cipher :: Int -> String -> String
cipher = map . shifter

unCipher :: Int -> String -> String
unCipher = cipher . negate





































