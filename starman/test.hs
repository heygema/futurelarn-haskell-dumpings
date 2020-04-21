#!/usr/bin/env runghc
import System.Random

main :: IO()
main = do
  g <- newStdGen
  randomR (1, 10) g

