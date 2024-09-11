import Data.Char (chr)
import Text.Printf

avalia :: [Int] -> (Int, Int)
avalia [] = (-1, 0)
avalia (cor : cores) =
  let (opcao, cont) = avalia cores
   in if cor <= 127
        then (5 - length cores, cont + 1)
        else (opcao, cont)

le :: Int -> IO ()
le 0 = return ()
le x = do
  entrada <- getLine
  let cores = map read (words entrada) :: [Int]
  let (opcao, cont) = avalia cores
  if cont == 1
    then printf "%c\n" (chr (65 + opcao - 1))
    else printf "*\n"
  le (x - 1)

itera :: Int -> IO ()
itera 0 = return ()
itera n = do
  le n
  n <- readLn :: IO Int
  itera n

main :: IO ()
main = do
  n <- readLn :: IO Int
  itera n