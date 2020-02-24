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


