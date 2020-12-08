module Main where


third x = [x, x + 3..]
fifth x = [x, x + 5..]
eighth x y = zipWith (+) (third x) (fifth y)

main :: IO ()
main = return ()