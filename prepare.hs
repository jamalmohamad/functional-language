module Prepare where
import  Data.List
import Data.Char

isLetter :: Char -> Bool
isLetter     chr  = 'a' <= chr && chr <= 'z'


max' :: Int -> Int -> Int
max'    x      y   
   |  x > y          = x
   | otherwise       = y



min' :: Int -> Int -> Int
min'    0     0    = error "zero "
min'    x      y   
    | x < y        = x
    | otherwise    = y




isLetterOrSpace :: Char -> Bool
isLetterOrSpace    ' '  = True
isLetterOrSpace     c 
    | 'a' <= c &&  c <= 'z'  = True
    | otherwise             = False



filter' :: (Int -> Bool) -> [Int] -> [Int]
filter'         f          xs      = [x | x <- xs, f x] 


filter'' :: (Int -> Bool) -> [Int] -> [Int]
filter''        f            []    = []
filter''        f            (x:xs) = x : filter'' f xs



-- insert 1 [2,3,4]
insert' :: Int -> [Int] -> [Int]
insert'    x      xs    = [y | y <- xs, y < x] ++ [x] ++ [y | y <- xs, y > x]


-- remove 1 [1,2,3] == [2,3]
remove' :: Int -> [Int] -> [Int]
remove'     x     xs    = [y | y <- xs, x/=y]



-- elem' 2 [2,3,4] == True
elem' :: Int -> [Int] -> Bool
elem'    x      xs    =  not (null ([y | y <- xs, x == y]))



-- union [1,2] [3,4] == [1,2,3,4]
union' :: [Int] -> [Int] -> [Int]
union'     xs       ys    = nub (sort (xs ++ ys))



-- f "HaskeLL" == "hll"
-- f :: [Char] -> [Char]
f :: String -> String
f      s     = [toLower x | x <- s, isUpper x == True]

-- area 6 10
area :: Int -> Int -> Int
area    x      y   = x *y


-- isSpace ' ' == True

isSpace' :: Char -> Bool
isSpace' ' '     = True
isSpace' c       | 'a' >= c && c <= 'z' = False



-- toUpperFirst "finn the human" == "Finn the human"
toUpperFirst :: String -> String
toUpperFirst     xs    = [toUpper (head xs)] ++ tail xs


-- isDigit '0' == True
isDigit' :: Char -> Bool
isDigit'     c    | '0' <= c && c >= '9' = True
                 | otherwise            = False


-- everyThird == "cfilorux"
-- everyThird :: [Char]

-- everyThird :: String
-- everyThird  = [x | x <- ['a'..'z'], drop 2 [x]]

-- lookupMap' "a" [("q", 1), ("a", 2)] == [2]
lookupMap' :: String -> [(String, Int)] -> [Int]
lookupMap'      key        map1           = [v | (k,v) <- map1, k == key]


-- fact' 3 == 6
fact' :: Int -> Int
fact'     0   = 1
fact'     x   = x * fact' (x-1)


-- append' [1,2] [3,4]   == [1,2,3,4]
append' :: [Int] -> [Int] -> [Int]
append'     []       ys   = ys
append'     (x:xs)   ys   = x : append' xs ys


-- isPrefixOf' "abc" "abcdef" == True
isPrefixOf' :: Eq a => [a] -> [a] -> Bool
isPrefixOf'            []    _          = True
isPrefixOf'            _     []         = False
isPrefixOf'           (x:xs)  (y:ys)    = x==y && isPrefixOf' xs ys


map' :: (a -> b) -> [a] -> [b]
map'       f        []  = []
map'       f        (x:xs)   = f x : map' f xs


-- reverse' [1,2,3,4] == [4,3,2,1]
reverse' ::  [Int] -> [Int]
reverse'             []                 = []    --base 
reverse'             (x:xs)             = reverse' xs `append'` [x]



sum' :: Num a => [a] -> a
sum'    []     = 0 --base
sum'   (x:xs)     = x + sum' xs







-- elem'' 1 [1,2,3] == True
elem'' :: Eq a => a -> [a] -> Bool
elem''            x     xs  = not (null ([y | y <- xs, x == y]))

type MAP = [(String, Int)]

-- lookupMap "a" [("a",1), ("b", 2)] == [1]
lookupMap :: String -> MAP -> [Int]
lookupMap      key         map = [v | (k, v) <- map, k == key] 


-- isPrefixOFF :: Eq a => [a] -> [a] -> Bool
isPrefixOFF :: String -> String -> Bool
isPrefixOFF      _        []    = False
isPrefixOFF      []       _     = True
isPrefixOFF     (x:xs)   (y:ys)  = x==y && isPrefixOFF xs ys


-- append'' [1] [2] == [1,2]
append'' :: [a] -> [a] -> [a]
append''      []     ys   = ys
append''      (x:xs) ys   = x : append'' xs ys
 
-- concat' [[1], [2], [3]] === [1,2,3]
concat' :: [[a]] -> [a]
concat'     []     =  []
concat'     (x:xs) = x `append''` concat' xs


isSuffixOf'  xs ys  = isPrefixOf (reverse xs) (reverse ys)


safeTail :: [a] -> Maybe [a]
safeTail    []     = Nothing
safeTail    (x:xs) = Just xs

safeHead :: [a] -> Maybe a
safeHead    []  = Nothing
safeHead    (x:xs) = Just x

-- safeIndex 1 [2,5] == Just 5
safeIndex :: Int -> [Int] -> Maybe Int
safeIndex    n      []     = Nothing
safeIndex    0      (x:xs) = Just x
safeIndex    n      (x:xs) = safeIndex (n-1) xs



-- unzip' [('a', 1), ('b', 2)] === [['a', 'b'], [1,2]]





-- zeroToN 10 == [0, 1, 2, 3, 4, 5, 6, 7,  8, 9, 10]
zeroToN :: Int -> [Int]
zeroToN    x   = [0..x]


ping :: (a -> Bool) -> a -> String
ping       f           x 
    | f x == True = "Pong"
    | otherwise   = "Pang"



-- productOf (<4) [1,7,2,6,3,3,5] == 18
productOf :: (Int -> Bool) -> [Int] -> Int
productOf         f           []     = 1
productOf         f           xs    = product [y | y <-xs, f y]


manyInt :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> [Int]
manyInt a b c d e f g       = [x | x <- [a..g], x `mod` 3 == 0]