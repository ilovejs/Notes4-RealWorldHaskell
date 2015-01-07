fixLines :: String -> String
--unlines function that concatenates a list of strings, 
--adding a newline to the end of each:
fixLines input = unlines (splitLines input)

--$ file gpl-3.0.txt
--gpl-3.0.txt: ASCII English text
--$ unix2dos gpl-3.0.txt
--unix2dos: converting file gpl-3.0.txt to DOS format ...
--$ file gpl-3.0.txt
--gpl-3.0.txt: ASCII English text, with CRLF line terminators