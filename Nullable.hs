--parameterised types

--a is not a regular variable: it's a type variable
--It indicates that the Maybe type takes another type as its parameter. 
data Maybe a = Just a
			 | Nothing

someBool = Just True
someString = Just "something"

