module Practicing where 

import Data.Char


fact' :: Integer -> Integer
fact'       0     =  1
fact'       1     = 1
fact'       x     = x * fact' (x-1)


len' :: [a] -> Integer
len'    []   = 0
len'   xs   = 1 + len' xs


length' :: [Int] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs



sum' :: [Int] -> Int
sum'    []      =  0
sum'    (x:xs)  = x + sum' xs


append' :: [Int] -> [Int] -> [Int]
append'    xs        []   = xs
append'    xs       (y:ys)  = append' (xs ++ [y]) ys    




reverse' :: [Int] -> [Int]
reverse'    []    =  []
reverse'  (x:xs)  = reverse' xs ++ [x]


-- f "HaskeLL" -> "hll"
f :: String -> String
f     xs      = [ toLower x | x <- xs, isUpper x]   -- list comprehension



ff :: String -> String
ff       []  = []
ff       (x:xs)     =  x : ff xs  -- recursion



-- Define a functionupperToLowerwhich converts every cap-ital letter to lower case and removes the rest.
-- upperToLower "" == ""
-- upperToLower "Hello World!" == "hw"
-- upperToLower "haSKell" == "sk"


upperToLower :: String -> String
upperToLower     []     = []
upperToLower     xs     = [ toLower x | x <- xs, not (isLower x)]