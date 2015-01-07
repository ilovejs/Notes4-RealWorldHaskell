splitLines [] = []
splitLines cs = 
	--partition list into 2 part
	--1 arg: function to examine whether to breakat that point or not.
	--function return Bool to indicate
	let (pre, suf) = break isLineTerminator cs  
	--case expression
	in pre : case suf of       -- : is list constructor
				('\r':'\n':rest)  ->  splitLines rest
				('\r':rest)		  ->  splitLines rest
				('\n':rest)		  ->  splitLines rest
				_				  ->  []

isLineTerminator c = c == '\r' || c == '\n'		

--ghci> break odd [2,4,5,6,8]
--([2,4],[5,6,8])
--ghci> :module +Data.Char
--ghci> break isUpper "isUpper"
--("is","Upper")