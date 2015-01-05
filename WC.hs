-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

--print Total number of lines
main = interact wordCount
    where wordCount input = show (length (lines input)) ++ "\n"