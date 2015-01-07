fromMaybe defval wrapped =
    case wrapped of
      Nothing     -> defval
      Just value  -> value

--How to test ???
      --fromMaybe "hhh" (Just 3)