import Data.Bits
import Text.Printf

imprime :: Int -> Int -> Int -> Int -> IO ()
imprime i j n limite
  | j >= n = do
      printf "\n"
      imprime (i + 1) 0 n limite
  | i >= n = return ()
  | j == 0 = do
      let format = "%" ++ show limite ++ "d" :: String
      let numero = 2 ^ i :: Int
      printf format numero
      imprime i (j + 1) n limite
  | otherwise = do
      let format = "%" ++ show (limite + 1) ++ "d"
      let numero = 2 ^ (i + j) :: Int
      printf format numero
      imprime i (j + 1) n limite

leitura :: IO ()
leitura = do
  n <- readLn :: IO Int
  if n == 0
    then return ()
    else do
      let limite = ceiling (logBase 10 (fromIntegral (2 ^ (2 * n - 2)))) :: Int
      imprime 0 0 n limite
      printf "\n"
      leitura

main :: IO ()
main = leitura
