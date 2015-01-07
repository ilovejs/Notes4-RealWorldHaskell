
--let version
lend amount balance = let reserve    = 100
                          newBalance = balance - amount
                      in if balance < reserve
                         then Nothing
                         else Just newBalance

--'where' create local variable
-- it applys to the code precede it.
--Benefit: where clause hide supporting detail at the end.
lend2 amount balance = if amount < reserve * 0.5
                       then Just newBalance
                       else Nothing
    where reserve    = 100
          newBalance = balance - amount


--The version use Guard
lends amount balance 
    | amount <= 0 			 = Nothing
    | amount > reserve * 0.5 = Nothing
    | otherwise              = Just newBalance
    where reserve    = 100
    	  newBalance = balance - amount