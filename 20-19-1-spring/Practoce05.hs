-- Practice 05

module Practice05 where
import Data.List (sort, nub)



-- Lists as "Sets"
-- [1, 4, 7]
-- add an element
-- insert 5 [1,4,7,9] == insert [1,4,5,7,9]

iinsert :: Int -> [Int] -> [Int]
-- iinsert a xs = nub( sort (a:xs))

iinsert x xs = [y | y <- xs, y < x] ++ [x] ++ [ ]


remove :: Int -> [Int] -> [Int]
remove x xs = [y | y <- xs, y /= x]


elem' :: Int -> [Int] -> Bool
--elem' x xs = length ([y | y <- xs, y==x]) /= 0
elem' x xs = not ( null ( [y | y <- xs, y==x]) )


intersection :: [Int] -> [Int] -> [Int]
intersection xs ys = [x | x <- xs, y <- ys, x == y]

-- union xs ys has both the elements of xs and ys
union :: [Int] -> [Int] -> [Int]
union xs ys = nub (sort (xs ++ ys))


copy :: [Int] -> [Int]
copy []       = []
copy (x:xs) = x : copy xs


bad :: [Int] -> [Int]
bad xs = bad xs


length' :: [Int] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

zip' :: [Int] -> [Int] -> [(Int, Int)]
zip' []      []    = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys
