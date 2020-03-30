module Practice06 where

-- Recursive functions
-- Haskell doesnot have loops

fact' :: Int -> Int
fact' 0 = 1
fact' n | n < 0 = undefined
fact' n = n * fact' (n-1)

-- fib 0 = 1, fib 1 = 1
-- fib (n+2) = fib (n+1) + fib n
fib :: Int -> Integer
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)


-- Functions in Data.List module
-- hackage link
length' :: [Int] -> Int
length' [] = 0
length' xs = 1 + length' xs


--zip' [] [] = []
--zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

-- (++) in Prelude
--append [1,2] [3,4] = [1,2,3,4]
append' :: [Int] -> [Int] -> [Int]
append'  listOne [] = listOne
append' listOne (headListTwo:tailListTwo) = append'(listOne ++ [headListTwo]) tailListTwo


reverse' :: [Int] -> [Int]
reverse' [] = []
-- reverse' (x:xs) = reverse' xs ++ [x]
reverse' (x:xs) = reverse' xs `concat` x

-- concat' [[1,2], [3]] == [1,2,3]
concat' :: [[Int]] -> [Int]
concat' [] = []
concat' (headFirst:[]) = headFirst
concat' (head:tail) = append' head (concat' tail)


sum' :: [Int] -> Int
sum' [] = 0
sum' (firstElement: tailOfFirstElement) = firstElement + sum' tailOfFirstElement

-- drop
-- take
-- takeAnd
-- foldr
