type Address = [String]
type CustomerID = Int

data Customer = Customer {
      customerID      :: CustomerID
    , customerName    :: String
    , customerAddress :: Address
    } deriving (Show)

c1 = Customer 001 "Mick J" ["1 George"]
c2 = Customer {
	  customerID = 271828
	, customerAddress = ["1048576 Disk Drive",
	                     "Milpitas, CA 95134",
	                     "USA"]
	, customerName = "Jane Q. Citizen"
}

--same as code below:

--data Customer = Customer Int String [String]
--                deriving (Show)

--customerID :: Customer -> Int
--customerID (Customer id _ _) = id

--customerName :: Customer -> String
--customerName (Customer _ name _) = name

--customerAddress :: Customer -> [String]
--customerAddress (Customer _ _ address) = address