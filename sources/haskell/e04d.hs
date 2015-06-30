frenteAPar :: Int -> [[Int]] -> [[Int]]
frenteAPar n xs = map (n:) $ filter (all even) xs
