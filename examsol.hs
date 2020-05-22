module Examsol where

{-

What is a function? What is λ (lambda) calculus? Syntax of λ calculus. What is β (beta) reduction, and how does a function application evaluate in λ calculus? What is currying? What is the normal form of an expression? When do we say that an expression is reducible?

-}


-- In Haskell, Functions has one input and one output

-- add 1 2 == 3
even' :: Int -> Bool
even'   =   \x  ->  (x `mod` 2 == 0)


-- lambda calculas
-- indication that we are started to define a function, also known as anonymous function
-- \a.a  \(input).(output)



-- lambda calculus syntax
-- variable              x
-- abstraction           (\a.b) x    (a -> b) (x)
-- application           f a b   f(a)(b)



-- beta reduction
-- take function and applying it to its argument
-- ((\a.a) \b.\c.b)(x)\e.f
--   = (\b.\c.b)   (x)\e.f
--   = (\c.x)    \e.f
--   = x
--  beta normal form



-- Currying
-- f :: a -> b -> c
-- to
-- f :: (a -> b) -> c   -- curried function
--   ^^^^^^^
--   one arg


-- normal form expression : x = x + 1, 1 + 1, 
-- reducible expression : (\x -> x + 1)(7)  == 8 




{-
2.Present the syntax of Haskell functions and constants. Show step-by-step evaluation of a function application. Show how functions can be used in infix and prefix form. What is precedence and associativity of an operator? What is the difference between left and right associativity?


-}


-- Present the syntax of Haskell functions and constants.
-- let x = 1  -- constant

-- f x = x
-- f :: Int -> Int


-- Show step-by-step evaluation of a function application.
length' :: [Int] -> Int
length'    []      = 0
length'    (x:xs)      = 1 + length' xs 



-- Show how functions can be used in infix and prefix form.
add :: Int -> Int -> Int
-- add      x      y  = x + y     -- infix  form
add      x      y  = (+) x y      -- prefix form



-- What is precedence and associativity of an operator?
-- :info ^    precedence level 8,  associativity right
-- :info *    precedence level 7, associativity left


  
-- What is the difference between left and right associativity?
-- left  associative : (1 - 2) + 3 == 2
-- right associative : 1 - (2 + 3) == -4











-- Define the notion of type. What are the predefined numeric types in Haskell?
-- predefined numeric types
-- Integer
-- Double
-- String
-- Bool



-- What is a type class?
-- it is a set of functions like Num, Ord :info Num

-- Present Num, Integral, Fractional, Eq, Ord and Show type classes.
-- :info   Num
-- :info Integral


-- When do we say that a type has an instance of a type class?


-- Define a new data type and make the type an instance of a type class without deriving.


-- Present how function types are written in Haskell. What is currying in Haskell?
f  :: Int -> Int -> Int
f = undefined

ff :: Num a => a -> a
ff  x = x




filter' :: (a -> Bool) -> [a] -> [a]     -- currying  
--         ^^^^^^^^^^^
--        arg as a function
filter'         f         []      = []
filter'         f        (x:xs)
  | f x         = x : filter' f xs
  | otherwise   = filter' f xs






{-
5. Show how new data types can be defined in Haskell.What is a type constructor and data constructor?Present an example of new data type in Haskell.Show how functions can pattern match on values of the new data type.When do we say that a function is total or partial?Present the definition of the list type in Haskell.Make the type an instance of a type class without deriving.
-}



-- Show how new data types can be defined in Haskell.
-- let mike = Person {firstName = "Mike", age = 20}
-- mike
-- show mike

data Person = Person { firstName :: String
                     , age       :: Int
                     }  deriving (Show, Read, Eq)


type Name          = String
type PhoneNumber   = String
type PhoneBook     = [(Name, PhoneNumber)]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook    name      pnum        pbook      = (name, pnum) `elem` pbook


data TrafficLight = Red | Yellow | Green -- deriving (Show)

instance Show TrafficLight where
  show Red      = "Red light"
  show Yellow   = "Yellow"
  show Green    = "Green"






-- total function   : involves passing all arguments
-- partial function : involves passing less than the arguments

add' :: Int -> Int -> Int
add'     x     y    = x + y   -- total

addOne = add' 1               -- partial




-- list type
-- ff :: [Int] -> [Int]
-- ff :: [Char] -> Bool
-- ff :: String -> String
-- ff :: Num a => [a] -> Bool
-- ff :: [Bool]





