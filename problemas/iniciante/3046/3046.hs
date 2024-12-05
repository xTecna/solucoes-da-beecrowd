import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  printf "%d\n" (div ((n + 1) * (n + 2)) 2)