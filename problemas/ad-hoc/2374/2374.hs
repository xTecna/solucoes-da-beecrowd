import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  m <- readLn :: IO Int
  printf "%d\n" (n - m)