module Main where

table() = [[(i, j, i*j) | j <- [1..12]] | i <- [1..12]]

main :: IO ()
main = return ()