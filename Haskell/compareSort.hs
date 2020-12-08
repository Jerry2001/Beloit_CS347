module Main where

sort compare [] = []  
sort compare (h:t) =   
    let leftPivot = sort compare [a | a <- t, compare a h]  
        rightPivot = sort compare [a | a <- t, not (compare a h)]  
    in  leftPivot ++ [h] ++ rightPivot 
main :: IO ()
main = return ()