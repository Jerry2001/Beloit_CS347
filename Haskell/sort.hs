module Main where

sort [] = []  
sort (h:t) =   
    let leftPivot = sort [a | a <- t, a <= h]  
        rightPivot = sort [a | a <- t, a > h]  
    in  leftPivot ++ [h] ++ rightPivot 
main :: IO ()
main = return ()