import qualified Data.List as List

fn :: [[a]] -> [[a]]
fn xs = oddRows xs ++ evenColumns xs

filterRowsByIndex :: (Int -> Bool) -> [[a]] -> [[a]]
filterRowsByIndex p xs = filterRowsByIndex' 1 p xs

filterRowsByIndex' :: Int -> (Int -> Bool) -> [[a]] -> [[a]]
filterRowsByIndex' _ _ [] = []
filterRowsByIndex' n p (h:t)
  | p n = h : nextRow
  | otherwise = nextRow
  where nextRow = filterRowsByIndex' (n + 1) p t


oddRows :: [[a]] -> [[a]]
oddRows = filterRowsByIndex odd

evenColumns :: [[a]] -> [[a]]
evenColumns xs = filterRowsByIndex even $ List.transpose xs
