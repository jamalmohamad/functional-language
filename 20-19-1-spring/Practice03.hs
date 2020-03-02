module Practice03 where
-- Pattern matching and guards

not' :: Bool -> Bool
not' True = False
not' False = True

isCubeEvenOrNegative :: Int -> Bool
isCubeEvenOrNegative n
    | even cn   = True
    | cn < 0    = True
    | otherwise = False
    where
        cn :: Int
        cn = n * n * n

-- define using pattern matching
or' :: Bool -> Bool -> Bool
or' True True   = True
or' True False  = True
or' False True  = True
or' False False = False

or'' a b 
    | a == True = True
    | b == True = True
    | otherwise = False


xor' :: (Bool, Bool) -> Bool
xor' (x,y)
    | x == False && y == False = False
    | x == False && y == True  = True
    | x == True && y == False = True
    | otherwise = False 

xor'' :: (Bool, Bool) -> Bool
xor'' (False, False)   = False
xor'' (False, True)   = True
xor'' (True, False)   = True
xor'' (True, True)   = False

swap :: (Int, Int) -> (Int, Int)
swap (x,y) = (y, x)

swap3 :: (Int, (Int, Int)) -> ((Int, Int), Int)
swap3 (a, (b, c)) = ((b, c), a)

max' :: Int -> Int -> Int
max' x y
    | x > y = x
    | otherwise = y