import System.IO (isEOF)
import Text.Printf

imprime :: Int -> Char -> IO ()
imprime 0 _ = return ()
imprime x y = do
  printf "%c" y
  imprime (x - 1) y

imprimeLinhas :: Int -> Int -> Int -> IO ()
imprimeLinhas espacos asteriscos tamanho = do
  if asteriscos <= tamanho
    then do
      imprime espacos ' '
      imprime asteriscos '*'
      printf "\n"
      imprimeLinhas (espacos - 1) (asteriscos + 2) tamanho
    else return ()

imprimeTriangulo :: Int -> Int -> IO ()
imprimeTriangulo tamanho deslocamento = imprimeLinhas (div tamanho 2 + deslocamento) 1 tamanho

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      n <- readLn :: IO Int
      imprimeTriangulo n 0
      imprimeTriangulo 3 (div n 2 - 1)
      printf "\n"
      le

main :: IO ()
main = le