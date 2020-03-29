-- Fifth exercise - list comprehension
-- Define a function isPrime which returnsTrueonly if its parameter is a prime number.
--not (isPrime 0)
--not (isPrime 1)
--not (isPrime 6)
--isPrime 2
--isPrime 3
--isPrime 7
-- isPrime 101

isPrime n
  | n == 1 =  False
  | n == 2 = True
  | n `mod` 2 == 0 = False
  | otherwise = True


--Define a constant primes which is an infinite list of primes.
--take 5 primes == [2, 3, 5, 7, 11]
primes = [x | x <- [0..], isPrime x]



alphabets = zip [0..25] ['a'..'z']

dominoes = zip [0..6] [0..6]


--Check whether a list contains only positive integers.
--For efficiency, you should usenullorand.
--allPositive [4, 5, 6, 8, 14]
--allPositive [1..100]
--allPositive []
--not (allPositive [10, 9 ..])
--not (allPositive [100, 98 .. 0])

-- wrong solution
allPositive :: [Int] -> Bool
allPositive xs
  | null ( [x | x <- xs, x `mod` 2 == 0]) = True
  | otherwise = False

