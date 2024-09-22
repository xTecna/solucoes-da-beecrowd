import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [c, p, f] = map read (words entrada) :: [Int]
  if p >= c * f
    then printf "S\n"
    else printf "N\n"