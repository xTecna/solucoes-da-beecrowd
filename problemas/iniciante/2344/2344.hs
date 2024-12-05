import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  if n > 85
    then printf "A\n"
    else
      if n > 60
        then printf "B\n"
        else
          if n > 35
            then printf "C\n"
            else
              if n > 0
                then printf "D\n"
                else printf "E\n"
