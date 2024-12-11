import Data.Char
import Text.Printf

variacoes :: Char -> Int
variacoes 'A' = 3
variacoes 'E' = 3
variacoes 'I' = 3
variacoes 'O' = 3
variacoes 'S' = 3
variacoes letra = 2

processa :: String -> Int
processa "" = 1
processa (letra : senha) = do
  (variacoes (toUpper letra)) * (processa senha)

leitura :: Int -> IO ()
leitura 0 = return ()
leitura n = do
  senha <- getLine
  printf "%d\n" (processa senha)
  leitura (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  leitura n