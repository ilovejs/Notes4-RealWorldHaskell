--lastButOne lst = if length lst < 2
--				 then lst
--				 else  head drop ((length lst) - 2) lst

lastButOne xs = if null xs || length xs <= 2
				then head xs
				else lastButOne (tail xs)