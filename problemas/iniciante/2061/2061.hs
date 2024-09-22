import Text.Printf

processa :: Int -> Int -> IO Int
processa n 0 = return n
processa n m = do
  entrada <- getLine
  if entrada == "fechou"
    then processa (n + 1) (m - 1)
    else processa (n - 1) (m - 1)

main :: IO ()
main = do
  entrada <- getLine
  let [n, m] = map read (words entrada) :: [Int]
  resposta <- processa n m
  printf "%d\n" resposta
