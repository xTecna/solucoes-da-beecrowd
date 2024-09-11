import Text.Printf

calcula :: Int -> IO ()
calcula 0 = return ()
calcula n = do
  entrada <- getLine
  let [a, b, c] = map read (words entrada) :: [Double]
  let media = (2 * a + 3 * b + 5 * c) / 10
  printf "%.1f\n" media
  calcula (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  calcula n