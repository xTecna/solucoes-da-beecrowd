import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [c, n] = map read (words entrada) :: [Int]
  printf "%d\n" (c `mod` n)