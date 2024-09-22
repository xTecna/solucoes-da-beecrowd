import Text.Printf

processa :: Int -> [Int] -> Int
processa t [] = 0
processa t (numero : numeros) = do
  let resposta = processa t numeros
  if numero == t
    then resposta + 1
    else resposta

main :: IO ()
main = do
  t <- readLn :: IO Int
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  let corretos = processa t numeros
  printf "%d\n" corretos