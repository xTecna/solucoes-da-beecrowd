import Text.Printf

fatorial :: Int -> Int
fatorial 1 = 1
fatorial n = n * (fatorial (n - 1))

main :: IO ()
main = do
  n <- readLn :: IO Int
  printf "%d\n" (fatorial n)