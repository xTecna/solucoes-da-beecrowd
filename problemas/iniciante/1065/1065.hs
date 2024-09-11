import Text.Printf

pares :: Int -> IO Int -> IO Int
pares 0 result = result
pares x result = do
  numero <- readLn :: IO Int
  if mod numero 2 == 0
    then pares (x - 1) (result >>= \r -> return (r + 1))
    else pares (x - 1) result

main :: IO ()
main = do
  resposta <- pares 5 (return 0)
  printf "%d valores pares\n" resposta
