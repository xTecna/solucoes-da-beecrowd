import Text.Printf

processa :: [Int] -> Int
processa [] = 0
processa (numero : numeros) = numero + processa numeros

main :: IO ()
main = do
  c <- readLn :: IO Int
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  printf "%d\n" (processa numeros)