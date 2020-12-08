cleanString :: String -> Float
cleanString inputString = read returnString :: Float where
	returnString =foldl(\ newString c ->if (c == ',' || c == '$') then newString else newString ++ [c]) "" inputString

main :: IO ()
main = return ()