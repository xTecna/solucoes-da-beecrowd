import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  printf "%d\n" (max a b)