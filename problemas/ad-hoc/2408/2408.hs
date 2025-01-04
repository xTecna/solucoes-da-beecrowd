import Data.List (sort)
import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  let ordenado = sort numeros
  printf "%d\n" (ordenado !! 1)