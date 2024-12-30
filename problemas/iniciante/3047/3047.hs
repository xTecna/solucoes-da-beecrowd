import Text.Printf

main :: IO ()
main = do
  m <- readLn :: IO Int
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  let c = m - a - b
  printf "%d\n" (max a (max b c))