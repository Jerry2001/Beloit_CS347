module Main where

combination (a) = [(a !! i1, a !! i2) | i1 <- [0..((length a) - 1)], i2 <- [0..((length a) - 1)], i1 < i2]

main :: IO ()
main = return ()

--["black", "white", "blue", "yellow", "red"]