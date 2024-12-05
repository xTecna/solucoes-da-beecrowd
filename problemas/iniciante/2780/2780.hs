import Text.Printf

main :: IO ()
main = do
  d <- readLn :: IO Int
  if d <= 800
    then printf "1\n"
    else
      if d <= 1400
        then printf "2\n"
        else printf "3\n"