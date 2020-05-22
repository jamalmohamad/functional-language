module Pr where

even' :: Int -> Bool
even'    = \x ->  x `mod` 2 == 0



not' :: Bool -> Bool
not'    True  = False
not'    False = True





isLetter :: Char -> Bool
isLetter     c   = 'a' <= c && c <= 'z'




sumOfSquares :: [Int] -> Int
sumOfSquares    xs    = sum [x*x | x <- xs]
