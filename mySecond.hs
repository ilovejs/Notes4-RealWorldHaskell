mySecond :: [a] -> a
mySecond xs = if null xs || length xs < 2
			  then error "list too short"
			  else head (tail xs)  --brackets is necessary
	

--A more controlled approach
--We can use the Maybe type to represent the possibility of an error.
safeSecond :: [a] -> Maybe a

safeSecond [] = Nothing
safeSecond xs = if null (tail xs)
                then Nothing
                else Just (head (tail xs))

--ghci> safeSecond [1,2]
--Just 2
--ghci> safeSecond [1,2,3]
--Just 2

--Improve readability by Pattern Matching
tidySecond :: [a] -> Maybe a

tidySecond (_:x:_) = Just x
tidySecond _       = Nothing

