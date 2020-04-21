#!/usr/bin/env runghc
import Distribution.Simple.Utils

wordPrefixers :: [[Char]] -> [[Char]]
wordPrefixers words =
  map (\x -> lowercase ((x !! 0) : []) ++ " is for " ++ x) words

spellerize :: [Char] -> [Char]
spellerize word =
  lowercase [head word] ++ " is for " ++ word

combiner :: [[Char]] -> [Char]
combiner words = foldl (\acc item -> acc ++ item ++ ", ") "" words

spellerMe :: [[Char]] -> [Char]
spellerMe xs = (combiner . wordPrefixers) xs

speller :: [[Char]] -> [Char]
speller [] = ""
speller (x:xs)
 | length xs == 1 = spellerize x ++ ", and " ++ speller xs
 | otherwise = spellerize x ++ speller xs

main :: IO ()
main = do
  (print . speller) ["Hello", "Raskell"]
