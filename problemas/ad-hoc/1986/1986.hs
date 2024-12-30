import Data.Char (ord)
import Text.Printf

valor :: Char -> Int
valor letra = do
  let valor = ord letra
  if valor < ord 'A'
    then valor - ord '0'
    else valor - ord 'A' + 10

convertePraDecimal :: String -> IO (Int)
convertePraDecimal "" = return 0
convertePraDecimal (letra : resto) = do
  valor_resto <- convertePraDecimal resto
  return (16 * valor_resto + (valor letra))

imprime :: [String] -> IO ()
imprime [] = return ()
imprime (letra : letras) = do
  resultado <- convertePraDecimal (reverse letra)
  printf "%c" resultado
  imprime letras

main :: IO ()
main = do
  n <- readLn :: IO Int
  entrada <- getLine
  let letras = words entrada :: [String]
  imprime letras
  printf "\n"