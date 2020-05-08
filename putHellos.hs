joinEsc :: [[Char]] -> [Char]
joinEsc []       = ""
joinEsc [x     ] = x
joinEsc (x : xs) = x ++ "\n" ++ joinEsc xs

main :: IO ()
main = do
  putStrLn "enter number: "
  n <- readLn :: IO Int
  let result = joinEsc (map (const "Hello World") [1 .. n])
  putStrLn result
