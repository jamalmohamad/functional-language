-- Haskell
-- expressions and declarations
-- expressions
-- 2 + 4 -> 6
-----    --- normal form
-- reducable
-- expression
-- (redex)


--  -> (means evaluation, reduction, normalizating)

-- Declaration
-- triple x            = x*3
          --             ----
          -- argument    body

-- function is a relation between input and output
even' n = mod n 2 == 0

-- odd' n = not (even' n)
odd' n = mod n 2 /= 0

-- order does not matter in haskell
-- Exception: stackoverflow  memory will be filled off 
-- :info (+)
-- :info (*)

-- mod 6 2+1
-- mod 6 2 then +1 or means (mod 6 2) +1
-- mod 6 (2+1)
-- 6 `mod` 2 pow 4
