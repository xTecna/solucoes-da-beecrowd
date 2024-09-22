import Text.Printf

calcula :: Int -> Double
calcula 0 = 2.0
calcula x = do
  let resposta = calcula (x - 1)
  2.0 + 1.0 / resposta

main :: IO ()
main = do
  n <- readLn :: IO Int
  if n == 0
    then do
      let resposta = 1.0 :: Double
      printf "%.10f\n" resposta
    else do
      let c = calcula (n - 1)
      let resposta = 1.0 + 1.0 / c
      printf "%.10f\n" resposta