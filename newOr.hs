newOr a b = if a then a else b

--Second arguments won't be evaluated
--newOr True (length [1..] > 0)