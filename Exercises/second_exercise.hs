-- Define a function which measures the distance between two integers on the number line.
-- distance 5 (-2) == 7
-- distance (-2) 5 == 7
-- distance 5 9    == 4
-- Hint: in Haskell, the absolute value function is abs.
distance :: Integer -> Integer -> Integer
distance x y = abs(x - y)  

-- Define the addition of fractions.
-- add (1, 2) (1, 2) == (2, 2)
-- add (4, 3) (6, 5) == (38, 15)
type Frac =  (Integer, Integer)
-- add :: (Integer -> Integer) -> (Integer -> Integer) -> (Integer -> Integer)
add :: Frac -> Frac -> Frac
add (a1, b1) (a2, b2)
    | b1 /= b2 =  ((a1 * b2) + (a2 * b1), (b1 * b2)) 
    | b1 == b2 = ((a1 + a2), (b2))

-- what is case of united denomenator?


-- Define the multiplication of fractions.
-- mul (1, 2) (1, 2) == (1, 4)
-- mul (4, 3) (6, 5) == (24, 15)

mul :: Frac -> Frac -> Frac
mul (a1, b1) (a2, b2) = ((a1 * a2), (b1 * b2))


-- Calculate the remainder and quotient of dividing an integer with another.
-- modDiv 10 5 == (0,2)
-- modDiv 11 5 == (1,2)
-- modDiv 7 7  == (0,1)
-- modDiv 7 8  == (7,0)
-- modDiv 7 1  == (0,7)
modDiv :: Integer -> Integer -> Frac
-- modDiv :: Integer -> Integer -> (Integer, Integer)
modDiv x y = (x `mod` y, x `div` y)

-- Solve quadratic equations. Lets assume the equations have two real solutions.
-- For example, solutions of x2−6x+ 8:
-- quadratic 1.0 (-6.0) 8.0 == (2.0, 4.0)


-- Measure the length of a vector that starts in the origin(0,0).
-- len (3, 4)  == 5.0
-- len (4, 3)  == 5.0
-- len (5, 12) == 13.0
len :: Frac -> Int
len (x, y) = if length[0..x] > length[0..y] then length[0..x] else length[0..y]



-- Stretch a vector with a constant factor.
-- stretch (2, 4) 2 == (4, 8)
-- stretch (1, 6) 3 == (3, 18)
stretch :: Frac -> Integer -> Frac
stretch (x, y) a = (a*x, a*y) 