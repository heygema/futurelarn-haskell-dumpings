import           Data.Char

cipherchar :: Int -> Char -> Char
cipherchar shift c | c == ' '  = c
                   | otherwise = chr (ord c + shift)

caesarcipher :: Int -> String -> String
caesarcipher shift = map (cipherchar shift)
