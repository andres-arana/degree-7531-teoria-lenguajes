data Polynom = Var String | Const Integer | Mul Polynom Polynom | Add Polynom Polynom

instance Show Polynom where
  show (Var var) = var
  show (Const i) = show i
  show (Mul a b) = (show a) ++ "*" ++ (show b)
  show (Add a b) = (show a) ++ " + " ++ (show b)
