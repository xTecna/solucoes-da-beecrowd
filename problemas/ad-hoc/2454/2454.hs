import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [p, r] = map read (words entrada) :: [Int]
  if p == 1 then
    if r == 1 then
      printf "A\n"
    else
      printf "B\n"
  else
    printf "C\n"