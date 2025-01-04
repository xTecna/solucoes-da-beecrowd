import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [a, b, c] = map read (words entrada) :: [Int]
  entrada <- getLine
  let [x, y, z] = map read (words entrada) :: [Int]
  printf "%d\n" ((div x a) * (div y b) * (div z c))