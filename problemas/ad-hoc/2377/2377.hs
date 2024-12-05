import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [l, d] = map read (words entrada) :: [Int]

  entrada <- getLine
  let [k, p] = map read (words entrada) :: [Int]

  printf "%d\n" (k * l + p * (floor (fromIntegral l / fromIntegral d)))