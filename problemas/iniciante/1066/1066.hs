import Text.Printf

leitura :: Int -> [Int] -> IO [Int]
leitura 0 numeros = return numeros
leitura x numeros = do
  numero <- readLn :: IO Int
  leitura (x - 1) (numeros ++ [numero])

pares :: [Int] -> Int
pares [] = 0
pares (numero : numeros) = do
  if mod numero 2 == 0
    then pares numeros + 1
    else pares numeros

impares :: [Int] -> Int
impares [] = 0
impares (numero : numeros) = do
  if mod numero 2 == 1
    then impares numeros + 1
    else impares numeros

positivos :: [Int] -> Int
positivos [] = 0
positivos (numero : numeros) = do
  if numero > 0
    then positivos numeros + 1
    else positivos numeros

negativos :: [Int] -> Int
negativos [] = 0
negativos (numero : numeros) = do
  if numero < 0
    then negativos numeros + 1
    else negativos numeros

main :: IO ()
main = do
  numeros <- leitura 5 []
  printf "%d valor(es) par(es)\n" (pares numeros)
  printf "%d valor(es) impar(es)\n" (impares numeros)
  printf "%d valor(es) positivo(s)\n" (positivos numeros)
  printf "%d valor(es) negativo(s)\n" (negativos numeros)