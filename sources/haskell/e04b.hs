sumacuad :: Int -> Int
sumacuad n = foldr accumulate 0 [1..n]

accumulate :: Int -> Int -> Int
accumulate value sum = sum + (value * value)
