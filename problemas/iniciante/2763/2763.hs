import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  printf "%s\n" (take 3 entrada)
  printf "%s\n" (take 3 (drop 4 entrada))
  printf "%s\n" (take 3 (drop 8 entrada))
  printf "%s\n" (take 2 (drop 12 entrada))