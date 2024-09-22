import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  entrada <- getLine
  let [p, _, q] = map read (words entrada) :: [Int]
  let c = words entrada !! 1
  if c == "+"
    then
      if p + q <= n
        then printf "OK\n"
        else printf "OVERFLOW\n"
    else
      if p * q <= n
        then printf "OK\n"
        else printf "OVERFLOW\n"