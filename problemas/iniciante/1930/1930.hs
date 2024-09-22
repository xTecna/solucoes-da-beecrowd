import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [t1, t2, t3, t4] = map read (words entrada) :: [Int]
  printf "%d\n" (t1 + t2 + t3 + t4 - 3)