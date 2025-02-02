import Data.Array
import Text.Printf

troca :: [Int] -> Int -> Int -> [Int]
troca mesas a b =
  if a < b
    then take a mesas ++ [mesas !! b] ++ take (b - a - 1) (drop (a + 1) mesas) ++ [mesas !! a] ++ drop (b + 1) mesas
    else troca mesas b a

procura :: [Int] -> Int -> Int -> Int
procura mesas a pessoa =
  if mesas !! a == pessoa
    then 0
    else (procura mesas (mesas !! a) pessoa) + 1

processa :: [Int] -> Int -> IO ()
processa mesas 0 = return ()
processa mesas n = do
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  if numeros !! 0 == 1
    then 
      let a = numeros !! 1
          b = numeros !! 2
      in processa (troca mesas a b) (n - 1)
    else do
      let a = numeros !! 1
      let resposta = procura mesas a a
      printf "%d\n" resposta
      processa mesas (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  let mesas = [0..n]
  q <- readLn :: IO Int
  processa mesas q