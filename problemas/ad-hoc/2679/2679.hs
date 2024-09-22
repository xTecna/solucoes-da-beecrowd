import Text.Printf

main :: IO ()
main = do
  x <- readLn :: IO Int
  printf "%d\n" (x + 2 - mod x 2)