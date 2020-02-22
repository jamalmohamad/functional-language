-- Define a function which increases its integer parameter by one.
-- inc 5    == 6
-- inc 0    == 1
-- inc (-5) == (-4)

inc :: Int -> Int
inc x = x + 1


-- Define a function which checks whether its parameter iseven. Function even already exists in Haskell, so lets call our function even'.
-- even' 2 
-- not (even' 3)
-- even'(-4)
even' :: Integer -> Bool
even' x = x `mod` 2 == 0


-- Define a function which chcks whether its parameter isodd. Function odd already exists in Haskell, so lets callour function odd'.
-- not (odd'2)
-- odd'3
-- not (odd'(-4))
odd' :: Integer -> Bool
odd' x = not(even' x) 


-- Define a function which checks whether an integer divides another.
-- 2`divides`4
-- not (4`divides`2)
-- 3`divides`9
divides :: Integer -> Integer -> Bool
divides x y = x `div` y == 0


-- Define a function which calculates the area of a rectangle using two sides.
-- area 6 10 == 60

area :: Int -> Int -> Int
area x y = x * y


-- Check whether a triangle with three given sides can be drawn.
-- triangleSides 2 1 2
-- not (triangleSides 3 4 1)

triangleSides :: Int -> Int -> Int -> Bool
triangleSides x y z 
    | x == z && y < x && y < z = True
    | otherwise = False


-- Check whether three integers are Pythagorean triples.
-- pythagoreanTriple 3 4 5
-- pythagoreanTriple 5 3 4
-- not (pythagoreanTriple 2 3 4)
pythagoreanTriple :: Int -> Int -> Int -> Bool
pythagoreanTriple x y z = ((x^2) + (y^2)) == (z^2)