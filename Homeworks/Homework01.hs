module Homework01 where

-- Define and' using pattern matching.
and' :: Bool -> Bool -> Bool
and' True True = True
and' True False = False
and' False True = False
and' _ _ = False


-- Define a function f0 with the following type.
f0 :: (Int, (Char, String)) -> ((String, Int), Char)
f0 (x, (chr, str)) = ((str, x), chr)
-- > f0 (0, ('b', "C")) == (("C", 0), 'b')


-- Define functions sort2 and sort3 that sort pairs and triples of integers.

-- > sort2 (1, 2) == (1, 2)
-- > sort2 (4, 4) == (4, 4)
-- > sort2 (7, 1) == (1, 7)
sort2 :: (Int, Int) -> (Int, Int)
sort2 (a, b) = if a < b then (a, b) else (b, a)



-- > sort3 (1, 2, 3)  == (1, 2, 3)
-- > sort3 (4, 2, 4)  == (2, 4, 4)
-- > sort3 (7, 2, -1) == (-1, 2, 7)
sort3 :: (Int, Int, Int) -> (Int, Int, Int)
--sort3 (1, 2, 3) = (1, 2, 3)
sort3 (x, y, z)
    | (x <= y && x <=z && y <= z) == True = (x, y, z)
    | (y <= x && y <= z && x==z) == True = (y, x, z)
    | otherwise = (z, y, x)