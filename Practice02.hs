module Practice02 where 

type Frac = (Integer, Integer)
--  a
--  --      = (a,b) :: Rational
--  a

zeroFrac :: Frac 
zeroFrac = (0,1)

oneFrac :: Frac
oneFrac = (1,1)

-- a1        a2         a1*b2 +a2*b1
-- -      +  -        = ------------------
-- b1        b2          b1*b2

-- Exercise: define addFrac and multFrac
addFrac :: Frac -> Frac -> Frac
addFrac (a1, b1) (a2,b2) = ((a1 * b2) + (a2*b1), (b1*b2))
--addFrac ab1 ab2 = undefined

multFrac :: Frac -> Frac -> Frac
multFrac ab1 ab2 = (fst ab1 * fst ab2, snd ab1 * snd ab2)


-- Exercise
-- reduce (2,4)    == (1,2)
-- reduce (-3, -3) == (1,1)
-- gcd :: Integer -> Integer –> Integer
-- gcd a b : greatest common divisor

-- let g = gcd a b
-- -- gcd' a b 
-- --     | let g in if a < 0 then - g else g

gcd' a b = let g = gcd a b in if a < 0 then - g else g
reduce :: Frac -> Frac
reduce ab = ( fst ab `div` gcd' (fst ab) (snd ab), snd ab `div` gcd' (fst ab) (snd ab))

subFrac :: Frac -> Frac -> Frac
subFrac ab ab = undefined

DivFrac :: Frac -> Frac -> Frac