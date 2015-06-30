subsecuencias :: [a] -> [[a]]
subsecuencias xs = [] : subsecuencias' xs

subsecuencias' :: [a] -> [[a]]
subsecuencias' [] = []
subsecuencias' (x:xs) = foldr accumulate [[x]] (subsecuencias' xs)
  where accumulate ys r = (x:ys) : ys : r

