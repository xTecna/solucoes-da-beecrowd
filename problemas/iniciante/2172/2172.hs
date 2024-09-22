import Text.Printf

leitura :: IO ()
leitura = do
  entrada <- getLine
  let [x, m] = map read (words entrada) :: [Int]
  if x == 0 && m == 0
    then return ()
    else do
      printf "%d\n" (x * m)
      leitura

main :: IO ()
main = do
  leitura
