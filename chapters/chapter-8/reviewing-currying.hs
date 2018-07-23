module ReviewCurrying where

cattConny :: String -> String -> String
cattConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattConny

appedCatty :: String -> String
appedCatty = cattConny "woops"

frappe :: String -> String
frappe = flippy "haha"
-- 1. appedCatty "woohoo!" -> "woops mrow woohoo!"
-- 2. frappe "1" -> "1 mrow haha"
-- 3. frappe (appedCatty "2") -> "whoops mrow 2 mrow haha"

-- 4. appedCatty (frappe "blue") -> "woops mrow blue mrow haha"
-- 5. cattConny (frappe "pink") (cattConny "green" (appedCatty "blue"))
--    cattyConny ("pink mrow haha") ( "green mrow woops mrow blue")
--    "pink mrow haha mrow  green mrow woops mrow blue"
-- 6. cattConny (flippy "Pugs" "are") "awesome"
--               ("are mrow Pugs mrow awesome")