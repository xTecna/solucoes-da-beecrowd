import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  printf "%d\n" (n - 2)