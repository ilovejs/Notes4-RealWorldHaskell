import Data.Char (digitToInt)

asInt :: String -> Int

loop :: Int -> String -> Int

--1st arg: accumulator
asInt xs = loop 0 xs

loop acc [] = acc

--my version
--loop acc (x:xs) = loop (acc * 10 + digitToInt x) xs

--cleaner version
loop acc (x:xs) = let acc' = acc * 10 + digitToInt x 
				  in loop acc' xs

--Test
--asInt "33"				  