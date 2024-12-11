import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [a, b, c] = map read (words entrada) :: [Int]
  if a == b || a == c || b == c || (a + b) == c || (a + c) == b || (b + c) == a
    then printf "S\n"
    else printf "N\n"