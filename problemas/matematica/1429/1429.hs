import Data.Char (ord)
import Text.Printf

valor :: Char -> Int
valor c = ord c - ord '0'

fatoriais :: Int -> Int
fatoriais 0 = 1
fatoriais 1 = 2
fatoriais 2 = 6
fatoriais 3 = 24
fatoriais 4 = 120
fatoriais _ = 0

converteParaDecimal :: String -> Int -> Int
converteParaDecimal "" _ = 0
converteParaDecimal (digito : resto) p =
  let resposta = converteParaDecimal resto (p - 1)
   in resposta + valor digito * fatoriais p

processa :: String -> IO ()
processa "0" = return ()
processa n = do
  printf "%d\n" (converteParaDecimal n (length n - 1))
  n <- getLine
  processa n

main :: IO ()
main = do
  n <- getLine
  processa n
