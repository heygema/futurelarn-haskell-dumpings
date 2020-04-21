splitBy :: String -> Char -> [String]
splitBy "" otherwise = []
splitBy (x:xs) c
  | x == c = splitBy xs c
  | otherwise = fst(  p)
