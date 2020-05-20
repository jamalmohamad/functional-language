module Ex where


-- map' (+1) [1,2] == [2, 3]
map' :: (a -> b) -> [a] -> [b]
map'       f        []  = []
map'       f     (x:xs) = f x : map' f xs
