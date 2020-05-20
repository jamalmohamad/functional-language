module Practice09 where

-- Higher-order functions

app :: (a -> b) -> a -> b
app f x = f x


flip' :: (a -> b -> c) -> (b -> a -> c)
--flip' f b a = f a b

flip' f = \b a -> f a b




-- define curry function
-- curry' fst 1 2 === 3
curry' :: ((a, b) -> c) -> a -> b -> c
curry'          f          x    y =  f (x, y)

-- define uncurry function
uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry'          f          (x, y)  = f x y



comp :: (a -> b) -> (b -> c) -> (a -> c) 
comp      f           g         a   = g (f a)





f1 :: (a -> (b, c)) -> (a -> b, a -> c)
f1         f   





-- forall
