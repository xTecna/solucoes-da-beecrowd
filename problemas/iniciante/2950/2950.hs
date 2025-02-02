import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [n, x, y] = map read (words entrada) :: [Int]
  let resposta = fromIntegral n / fromIntegral (x + y) :: Double
  printf "%.2f\n" resposta
