import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [ca, ba, pa] = map read (words entrada) :: [Int]
  entrada <- getLine
  let [cr, br, pr] = map read (words entrada) :: [Int]
  printf "%d\n" (max (cr - ca) 0 + max (br - ba) 0 + max (pr - pa) 0)