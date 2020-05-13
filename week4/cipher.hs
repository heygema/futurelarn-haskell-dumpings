import           Data.Char

shouldShift :: Char -> Bool
shouldShift c = isLetter c && isAscii c

decipherchar :: Int -> Char -> Char
decipherchar shift c | shouldShift c = chr (ord c + (-shift))
                     | otherwise     = c

cipherchar :: Int -> Char -> Char
cipherchar shift c | shouldShift c = chr (ord c + shift)
                   | otherwise     = c

caesarcipher :: Int -> String -> String
caesarcipher shift = map (cipherchar shift)
