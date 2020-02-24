-- 1- Define the factorial function recursively.
-- fact 0 == 1
-- fact 1 == 1
-- fact 3 == 6
-- fact 6 == 720

fact :: Integer -> Integer
fact 0 = 0
fact 1 = 1
fact x = x * fact (x-1)


-- 2- Determine thenth Fibonacci number!
-- fib 0 == 0
-- fib 1 == 1
-- fib 2 == 1
-- fib 4 == 3
-- fib 5 == 5

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)


-- Define the power function. In Haskell, this is operator ˆ, 
-- now lets call our function pow. 
-- Define recursively, do not use ˆ.
-- pow 0 2 == 0
-- pow 0 0 == 1
-- pow 2 0 == 1
-- pow 2 1 == 2
-- pow 3 2 == 9

pow :: Integer -> Integer -> Integer
pow 0 2 = 0
pow 0 0 = 0
pow _ 0 = 1 
pow num power = num * pow num (power-1)


-- Define a function range, which lists all integers between two integers recursively.
-- Do not use expression like[ .. ]. We assume the second parameter is not smaller than the first.
-- range 5 9 == [5, 6, 7, 8, 9]
-- range 5 5 == [5]
-- range 0 3 == [0, 1, 2, 3]

-- Change function range so that it can also produce a decreasing sequence when 
-- the second parameter is smaller that the first.
-- range 6 8 == [6, 7, 8]
-- range 6 6 == [6]
-- range 4 1 == [4, 3, 2, 1]


range :: Int -> Int -> [Int]
range x y 
    | x == y    = [x]
    | x < y     = x : range(x+1) y
    | otherwise = x : range(x-1) y



-- Redefine function length, which counts the length of a list.
-- length'[]      == 0
-- length'[5]     == 1
-- length'[8,0,3] == 3

increment :: [a] -> Int -> Int
increment [] n          = n
increment xs counter    = increment xs (counter+1)

length' :: [Int] -> Int
length' []      = 0
length' [x]     = 1
length' xs      = increment xs 0


-- Redefine function minimum, which recursively searches for the least element in a list.
-- minimum'[0] == 0
-- minimum'[9, 3, 4, 1, 10] == 1

minimum' :: [Int] -> Int
minimum' [0] = 0
minimum' (x:xs) = 




