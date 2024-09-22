import System.IO (isEOF)
import Text.Printf

imprime :: Int -> Int -> Int -> IO ()
imprime i j n
  | j >= n = do
      printf "\n"
      imprime (i + 1) 0 n
  | i >= n = return ()
  | i == n - 1 - j = do
      printf "2"
      imprime i (j + 1) n
  | i == j = do
      printf "1"
      imprime i (j + 1) n
  | otherwise = do
      printf "3"
      imprime i (j + 1) n

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      n <- readLn :: IO Int
      imprime 0 0 n
      le

main :: IO ()
main = le
