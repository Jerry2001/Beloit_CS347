module Main where

colours = ["red", "green", "blue"]
label = [(alabama, mississippi, georgia, tennessee, florida) |
  alabama <- colours,
  mississippi <- colours,
  georgia <- colours,
  tennessee <- colours,
  florida <- colours,
  mississippi /= tennessee,
  mississippi /= alabama,
  alabama /= tennessee,
  alabama /= georgia,
  alabama /= florida,
  georgia /= florida,
  georgia /= tennessee]

main :: IO ()
main = return ()

-- :l mapColoring.hs