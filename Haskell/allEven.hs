module Main where

allEven :: [Integer] -> [Integer]
allEven [] = []
allEven (h:t) = if even h then h:allEven t else allEven t

allEven1 :: [Integer] -> [Integer]
allEven1 [] = []
allEven1 (a) = if even (last a) then (allEven2 (init a))++([last a]) else allEven2 (init a)

allEven2 :: [Integer] -> [Integer]
allEven2 (a) = [c | c <- a, even c]

main :: IO ()
main = return ()