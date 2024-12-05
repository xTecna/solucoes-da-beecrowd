import Text.Printf

main :: IO ()
main = do
  a <- readLn :: IO Int
  m <- readLn :: IO Int
  printf "%d\n" (2 * m - a)