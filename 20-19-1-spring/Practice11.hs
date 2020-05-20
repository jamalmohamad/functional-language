module Practice11 where

-- reverse' xs = foldr (\x g -> g.(x:)) id xs []
reverse' xs = foldl (\ys y -> y : ys) [] xs 
reverse'' xs  = foldl (flip (:)) [] xs 


product' :: Num a => [a] ->a
product' xs = foldl (*) 1 xs