-- first practice haskell

f :: a -> a
f x = x

ff :: String
ff = "Hello" 

fact :: Integer
fact = product [1..10]

facct :: Integer -> Integer
facct n = product [(1 :: Integer)..n]
-- facct = \n -> product [1..n]

first :: a -> b -> a
first x y = x
-- first \x y -> x

-- second :: a -> b -> b
-- second = 

--app :: (a -> b) -> a -> b

-- (+) :: Integer -> Integer -> Integer
-- (-) :: Integer -> Integer -> Integer

-- even :: Integer -> Bool
-- odd :: Integer -> Bool
-- (), (||) :: Bool -> Bool -> Bool
-- (==) , (/=), (<), (<=) :: Integer -> Integer -> Bool

-- :t (+) (6 :: Integer)

-- add6 = (+) 6

-- map ((+) 6) [1,2,3]
app2 :: (a -> b -> c) -> b -> a -> c
-- y :: a
-- x :: b
-- f :: a -> b -> c
app2 f x y = f y x 
