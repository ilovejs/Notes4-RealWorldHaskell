--protect the execution of function
nodesAreSame (Node a _ _) (Node b _ _)
   | a == b    = Just a
--any other type
nodesAreSame _ _ = Nothing


