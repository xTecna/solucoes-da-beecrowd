import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  let limite = fromIntegral n / log (fromIntegral n) :: Double
  printf "%.1f %.1f\n" limite (1.25506 * limite)