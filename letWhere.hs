bar = let b = 2
          c = True
      in let a = b
         in (a, c) 


--(2, true)


foo = x
    where x = y
              where y = 2

--2