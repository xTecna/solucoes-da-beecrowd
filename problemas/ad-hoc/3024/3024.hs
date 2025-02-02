import Text.Printf

processa :: Int -> [Int] -> Int -> Int -> Int
processa x [] anterior acumulado = acumulado
processa x (atual : resto) anterior acumulado = do
  if atual - anterior <= x
    then processa x resto atual (acumulado + 1)
    else max acumulado (processa x resto atual 1)

main :: IO ()
main = do
  entrada <- getLine
  let [n, x] = map read (words entrada) :: [Int]
  entrada <- getLine
  let alturas = map read (words entrada) :: [Int]
  let resultado = processa x (tail alturas) (head alturas) 1
  printf "%d\n" resultado