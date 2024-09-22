import Data.List (sort)
import Text.Printf

processa :: Int -> IO ([String], Int, Int)
processa 0 = return ([], 0, 0)
processa n = do
  entrada <- getLine
  let [comportamento, crianca] = words entrada :: [String]
  (criancas, levadas, comportadas) <- processa (n - 1)
  if comportamento == "+"
    then return (crianca : criancas, levadas, comportadas + 1)
    else return (crianca : criancas, levadas + 1, comportadas)

imprime :: [String] -> IO ()
imprime [] = return ()
imprime (crianca : criancas) = do
  printf "%s\n" crianca
  imprime criancas

main :: IO ()
main = do
  n <- readLn :: IO Int
  (criancas, levadas, comportadas) <- processa n
  let ordenado = sort criancas
  imprime ordenado
  printf "Se comportaram: %d | Nao se comportaram: %d\n" comportadas levadas