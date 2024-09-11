import Text.Printf

imprime :: Int -> Int -> IO ()
imprime x limite = do
  if (x > limite)
    then return ()
    else do
      printf "%d^2 = %d\n" x (x * x)
      imprime (x + 2) limite

main :: IO ()
main = do
  n <- readLn :: IO Int
  let valor = n - (mod n 2)
  imprime 2 valor