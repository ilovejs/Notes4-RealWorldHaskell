import Data.Char (toUpper)

--each elem to the square of original
square :: [Double] -> [Double]

square (x:xs) = x * x : square xs
square []	  = []

uppCase :: String -> String
uppCase (x:xs) = toUpper x : uppCase xs
uppCase []     = []

--utilize map
square2 xs = map squareOne xs
			 where squareOne x = x * x

uppCase2 xs = map toUpper xs

--
myMap :: (a -> b) -> [a] -> [b]
myMap func (x:xs) = (func x) : myMap func xs
myMap func _ = []  -- _  


--Notes:
--1.change [] to _ , see all the errors ?!. How to mitigate this situation?
--2. myMap toUpper "fs" will yield "FS"