<center> <h1>Exam questions and learning resources</h1> </center>
<center> <h2>Functional Languages</h2> </center>
<center> <h3>MO</h3> </center>
<center> <h4>May 2020</h4> </center>

## Instructions
<div align="center">At the beginning of your exam, you are randomly given an item from the list below.
After preparation time, you have to answer the questions and instructions in the item.
The instructor may also ask questions from items other than the randomly chosen.</div>



### 1. **What is a function? What is λ (lambda) calculus? Syntax of λ calculus.What is β (beta) reduction, and how does a function application evaluate in λ calculus?What is currying?What is the normal form of an expression? When do we say that an expression is reducible?** 
```
In Haskell, Functions has one input and one output

-- add 1 2 == 3
add :: Int -> Int -> Int
add     x     y   =  x + y



example: 

(\x -> 2*x*x + y)(7)

(2*7*7 + y)

subtitute value of 7  to every 'x' ocurrences

normal form expression : x = x + 1, 1 + 1, 
reducible expression : (+1) 4 
```


<div style="page-break-after: always; visibility: hidden"> 
\pagebreak 
</div>


### 2. **Present the syntax of Haskell functions and constants.**

```
-- function constants
function declaration should be started with lower case only

func :: Int -> Int     -- right
Func :: Int -> Int     -- wrong

 
-- pattern matching

or'' :: Bool -> Bool -> Bool
or'' True _    = True
or'' _    True = True
or'' _    _    = False


-- guards


-- where



```




### **Show step-by-step evaluation of a function application.**
``` 
-- f "Haskell" == 7

f :: String -> Int
f     str  = length str
```

### **Show how functions can be used in infix and prefix form.**

### **What is precedence and associativity of an operator? What is the difference between left and right associativity?**



<hr>

### 3. **Define the notion of type. What are the predefined numeric types in Haskell?**


### **What is a type class? Present Num, Integral, Fractional, Eq, Ord and Show type classes.**

### **When do we say that a type has an instance of a type class?**


### **Define a new data type and make the type an instance of a type class without deriving. Present how function types are written in Haskell. What is currying in Haskell?**



<hr>

### **4. Present tuple types, their construction in Haskell expressions and how a function can pattern match on tuples. Present the list type, its data constructors, and how a function can pattern match on lists. What is the difference between tuples and lists? What is a list comprehension and how does it evaluate? How is the String type defined in Haskell?**

```
-- tuples pattern matching
ftuple :: (Int, String, Char) -> (String, Int, Char)
ftuple    (x, str, chr)       =  (str, x, str) 


-- list pattern matching
flist :: [Int] -> [Int]
flist     xs   = xs


flist :: [a] -> Int
flist    xs    = length xs


-- a can be String, Char, Int

Tuples : can mix many types        (Int, String)
List   : can use only one type     [Int, Int]


-- list comprehension
countTo10 :: [Int]
countTo10 = [x | x <- [1..10]]


-- String can be defined as [Char] == ['d'] or String == "d"

```


### **5. Show how new data types can be defined in Haskell. What is a type constructor and data constructor? Present an example of new data type in Haskell. Show how functions can pattern match on values of the new data type. When do we say that a function is total or partial? Present the definition of the list type in Haskell. Make the type an instance of a type class without deriving.**

```

```



<div style="page-break-after: always; visibility: hidden"> 
\pagebreak 
</div>

### **6. What is a recursive function? Define a recursive function over lists and explain its behavior using step-by-step evaluation. What is a base case? Present the three step principle of recursively solving a problem. Show how the order of function clauses affects the behavior of the function.**

```
-- recursive functions are the functions that repreat itself / apply itself


{-recursive with list-}
-- List itself is a recursive data structure
myLength :: [Int] -> Int
myLength     []   = 0
myLength    xs    = 1 + myLength xs

-- myLength [1,2] = 1 + myLength [2]
--                = 1 + 1 + myLength []    <- 0 


-- base case is a non-recursive function


{-Present the three step principle of recursively solving a problem.-}

-- break down a problem to similar subproblem 
-- solve sub problem recursivly
-- combine the solutions of subproblems and adjust them to solve the original problem.


{-recursion without lists-}
-- fact 3 == 1*2*3
fact :: Int -> Int
fact     0  = 1
fact     x  = x * fact (x - 1)

-- fact 2 = 2 * fact(2-1)
--        = 2 * fact (1)
--        = 2 * 1 * fact (0) <- 1
--        = 2

```



### **7. Present the three categories of types in Haskell. What is polymorphism and what kinds of polymorphism are supported in Haskell? Define a function for each kind of polymorphism. What makes a function polymorphic in Haskell? Demonstrate parametricity in Haskell. Present numeric literals in Haskell and their types. What operations can be used on a value given only the type class instances of its type but not the type itself?**




<hr>

### **8. What is a higher order function? Define a higher order function in Haskell. Define the function composition operator in Haskell together with its type and demonstrate its use in an expression. Define map and filter. What is an anonymous function? What are sections in Haskell?**
```
{-
higher order functions -> functions that take functions as an arguments
comp :: (b -> a) -> (a -> b) -> a -> c


-}



comp :: (b -> c) -> (a -> b) -> a -> c
comp        f           g   x  = f (g x)


-- map' (+1) [1,2,3]         == [2,3,4]
-- map' (\x -> x + 1) [1,2]  == [2,3]

map' :: (a -> b) -> [a] -> [b]
map'        f         []    = []
map'        f       (x:xs)  = f x : map' f xs 



filter' :: (a -> Bool) -> [a] -> [a]
filter'          f         []         = []
-- filter'           f        xs      = [y | y <- xs, f y]
filter'              f     (x:xs)
  |f x            =  x : filter' f xs
  | otherwise     = filter' f xs



{- -anonymous functions -> functions without names also called lambda}
map' (\x -> x + 1) [1,2]

```




## **9. What does it mean to fold a list? What is the difference between folding from left and right? Define foldr with type declaration and demonstrate its use in an example. Define a recursive function over list using foldr. Define foldl with type declaration and demonstrate its use in an example.**