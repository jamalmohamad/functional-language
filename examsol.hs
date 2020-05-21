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
