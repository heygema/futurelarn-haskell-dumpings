data Pet = Cat | Dog | Fish | Parrot String deriving (Eq, Show)

hello :: Pet -> String
hello x =
  case x of
    Cat -> "meaow"
    _ -> "whatever"

hello2 :: Pet -> String
hello2 x
  | x == Cat = "meaow too"
  | otherwise = "whatever too"
