import Text.Printf

somaPA :: Int -> Int -> Int -> Int
somaPA a1 an n = div ((a1 + an) * n) 2

leitura :: [Int] -> Int
leitura [] = 0
leitura (numero : numeros) = do
  if numero > 0
    then numero
    else leitura numeros

main :: IO ()
main = do
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  let a = head numeros
  let n = leitura (tail numeros)
  printf "%d\n" (somaPA a (a + n - 1) n)
