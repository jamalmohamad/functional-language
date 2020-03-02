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