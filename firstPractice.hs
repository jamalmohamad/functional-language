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

