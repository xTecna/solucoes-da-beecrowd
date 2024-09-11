import Text.Printf

positivos :: Int -> IO Int -> IO Int
positivos 0 result = result
positivos x result = do
  numero <- readLn :: IO Double
  if numero > 0
    then positivos (x - 1) (result >>= \r -> return (r + 1))
    else positivos (x - 1) result

main :: IO ()
main = do
  resposta <- positivos 6 (return 0)
  printf "%d valores positivos\n" resposta
