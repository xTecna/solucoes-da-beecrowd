import Text.Printf

main :: IO ()
main = do
  l <- readLn :: IO Int
  c <- readLn :: IO Int
  printf "%d\n" (l * c + (l - 1) * (c - 1))
  printf "%d\n" (2 * (l + c - 2))