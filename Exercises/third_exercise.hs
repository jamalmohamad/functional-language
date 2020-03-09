-- Redefine the logical operator “and” (&&) using pattern matching.
-- and' True True
-- not (and'True False)

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ False = False
and' False True = False


-- Redefine the logical operator “or” (||) using pattern matching.
-- or'True True
-- or'True False
-- or'False True
-- not (or'False False)

or' :: Bool -> Bool -> Bool
or' True _ = True
or' False False = False