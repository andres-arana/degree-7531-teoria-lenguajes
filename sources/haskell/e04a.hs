paridad :: [String] -> [Int]
paridad = map (boolToInt . odd . length)

boolToInt :: Bool -> Int
boolToInt True = 1
boolToInt False = 0

