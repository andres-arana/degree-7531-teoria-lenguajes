sublistIndex :: Eq a => [a] -> [a] -> Int
sublistIndex = sublistIndex' 1

sublistIndex' :: Eq a => Int -> [a] -> [a] -> Int
sublistIndex' _ _ [] = 0
sublistIndex' index term target@(_:xs)
  | isPrefix term target = index
  | otherwise = sublistIndex' (index + 1) term xs

isPrefix :: Eq a => [a] -> [a] -> Bool
isPrefix [] _ = True
isPrefix (x:xs) (y:ys)
  | x == y    = isPrefix xs ys
  | otherwise = False
isPrefix _ [] = False
