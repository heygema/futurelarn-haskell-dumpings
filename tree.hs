#!/usr/bin/env runghc

data Tree = Leaf | Node Int Tree Tree deriving Show

treeDepth :: Tree -> Int
treeDepth Leaf                = 0
treeDepth (Node _ left right) = 1 + treeDepth left + treeDepth right

isTreeSorted :: Tree -> Int -> Int -> Bool
isTreeSorted Leaf _ _ = True
isTreeSorted (Node x left right) minValue maxValue =
  let isLeftSorted  = isTreeSorted left minValue x
      isRightSorted = isTreeSorted right x maxValue
  in  x >= minValue && x <= maxValue && isLeftSorted && isRightSorted


aTree =
  let val = 1 in Node val (Node (val + 1) (Node (val + 2) Leaf Leaf) Leaf) Leaf

-- main :: IO ()
-- main = putStrLn "hi"
