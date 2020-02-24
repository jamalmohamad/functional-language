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
pow num power = num + pow (num) (power-1)

