module Practice10 where

-- filter with list comprehension
filter' :: (a -> Bool) -> [a] -> [a]
filter'         _         []   =  []
filter'         f          xs   = [ x | x <- xs, f x ]

-- filter with recursion
filter'' :: (a -> Bool) -> [a] -> [a]
filter'' f [] = []
filter''       f           (x:xs)
    | f x = x : filter'' f xs
    | otherwise = filter'' f xs


-- map' with recursion
map' :: (a -> b) -> [a] -> [b]
map'        f       []     = []
map'        f       (x:xs) = f x : map' f xs

-- map with list comprehension




zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith'         _           []     _      = []
zipWith'         _           _     []      = []
zipWith'         f          (x:xs)  (y:ys)  = f x y : zipWith' f xs ys


-- use list comprehension
-- zipWith'' :: (a -> b -> c) -> [a] -> [b] -> [c]
-- zipWith''       f             xs     ys  = [x | x <- xs, y | y <- ys, f x y]



keep :: (Int -> Bool) -> [a] -> [a]
keep         f           xs  =  map f xs