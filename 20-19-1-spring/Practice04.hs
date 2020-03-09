--  f :: Int -> (Bool, Int) -> Int 
--  f x (y , z) = if y then x + z else x - z


--  When defining a function `f :: Bool -> Bool -> Bool -> Bool` 
--  by giving all possible cases, how many cases are needed ?
--   8 <- correct one
--   6
--   4
--   2

module Practice04 where

-----------
-- Lists --
-----------

l1 :: [Int]
l1 = [1,2,3]

l2 :: [Bool]
l2 = [False, True]

l3 :: [Char]
l3 = "Hello" -- == 'H' : 'e' : 'l' : 'l' : 'o' : []

headInt :: [Int] -> Int
headInt (x : xs) = x
headInt [] = error "headInt []"

tailInt :: [Int] -> [Int]
tailInt (x : xs) = xs

isEmpty :: [Int] -> Bool
isEmpty [] = True
--isEmpty (_,_) = True
--isEmpty _ = False

-- length' :: [Int] -> Int
length' xs = sum[1| _ <- xs]

filter' :: (Int -> Bool) -> [Int] -> [Int]
filter' f xs = [x | x <- xs, f x]
 
countEven :: [Int] -> Int
--countEven xs = length([n | n <- xs, even n])
--countEven xs = length([n | n <- filter even xs])
countEven xs = length(filter even xs)

-- sumOfSquares [x,y,...] == x*x + y*y + ...
sumOfSquares :: [Int] -> Int
sumOfSquares xs = sum[n * n | n <- xs]
--sumOfSquares xs = sum(map(\x -> x*x) xs)

allInteger :: [Int]
allInteger = [1..]

squares :: [Int]
squares = [x*x | x <- allInteger]

-- define isSquare using `elem`, to find if the number is square or not 
isSquare :: Int -> Bool
isSquare x
    | x `elem` (take x squares) = True
    | otherwise = False

-- isSeq