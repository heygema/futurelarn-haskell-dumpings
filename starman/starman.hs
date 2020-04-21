#!/usr/bin/env runghc
check :: String -> String -> Char -> (Bool, String)
check word display c =
  (c `elem` word, [ if x == c then c else y | (x, y) <- zip word display ])

turn :: String -> String -> Int -> IO ()
-- NOTE: previous function:
-- turn word display n = if n == 0
    -- then putStrLn "You loose"
    -- else if word == display
      -- then putStrLn "You win"
      -- else makeGuess word display n
turn word display n | n == x          = putStrLn "You loose"
                    | word == display = putStrLn "You win"
                    | otherwise       = makeGuess word display n
  where x = 0

makeGuess :: String -> String -> Int -> IO ()
makeGuess word display n =
  -- because do in here immediately run putStrLn
                           do
  putStrLn (display ++ "  " ++ take n (repeat '*'))
  putStr "   Enter your guess: "
  q <- getLine
  let (correct, display') = check word display (head q) -- get the first index of getLine string
  let n'                  = if correct then n else n - 1
  turn word display' n'

starman :: String -> Int -> IO ()
starman word n = turn word [ '-' | x <- word ] n

main :: IO ()
main = starman "Sophia" 3
