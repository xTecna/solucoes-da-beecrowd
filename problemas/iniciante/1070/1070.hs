import Text.Printf

impares :: Int -> Int -> IO ()
impares n 0 = return ()
impares n x = do
  printf "%d\n" n
  impares (n + 2) (x - 1)

main :: IO ()
main = do
  x <- readLn :: IO Int
  let impar = x + (1 - rem x 2)
  impares impar 6