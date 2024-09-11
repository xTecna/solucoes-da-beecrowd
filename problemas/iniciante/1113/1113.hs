import Text.Printf

compara :: IO ()
compara = do
  entrada <- getLine
  let [x, y] = map read (words entrada) :: [Double]
  if x == y
    then return ()
    else do
      if x < y
        then printf "Crescente\n"
        else printf "Decrescente\n"
      compara

main :: IO ()
main = compara
