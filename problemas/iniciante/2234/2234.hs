import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [h, p] = map read (words entrada) :: [Int]
      retorno = fromIntegral h / fromIntegral p :: Double
  printf "%.2f\n" retorno
