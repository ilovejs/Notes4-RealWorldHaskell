--Recursive types

--We'll use Cons in place of the (:) constructor, and Nil in place of []

--Cons 3 (Cons 2 (Cons 1 (Cons 0 Nil)))
data List a = Cons a (List a)
            | Nil
              deriving (Show)

--Notes:
--load code to ghci, then you can try Nil, otherwise no response.
--ghci> Nil
--Nil        

--Data type 'List' is not system wide.
--It's user-defined

fromList :: [a] -> List a
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil