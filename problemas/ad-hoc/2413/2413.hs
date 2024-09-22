import Text.Printf

main :: IO ()
main = do
  t <- readLn :: IO Int
  printf "%d\n" (4 * t)