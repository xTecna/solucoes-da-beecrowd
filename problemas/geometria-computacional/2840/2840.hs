import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let pi = 3.1415 :: Double
      [r, l] = map read (words entrada) :: [Int]
      v = 4.0 * pi * fromIntegral (r * r * r) / 3.0 :: Double
      retorno = floor (fromIntegral l / v) :: Int
  printf "%d\n" retorno