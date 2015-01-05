--print Total number of chars including empty char
main = interact wordCount
    where wordCount input = show (sum (map length (words input))) ++ "\n"

    -- let x = "abc e"
    -- map length (words x)
	-->[3,1]

