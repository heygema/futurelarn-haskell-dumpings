module Main where

data PersonRecord = MkPersonRecord {
  name :: String,
  address :: Address,
  id :: Int,
  labels :: [Label]
} deriving (Show)

data Address = MkAddress {
  line1 :: String,
  number :: Int,
  street :: String,
  town :: String,
  postcode :: String
} deriving (Show)

data Label = Green | Red | Blue | Yellow deriving (Show)

rec1 = MkPersonRecord
  "Yes"
  (MkAddress "School of Computer Science" 17 "Lilybank Gdns" "Glasgow" "9838439"
  )
  1
  [Green, Red]

main :: IO PersonRecord
main = do
  print rec1
  return rec1
