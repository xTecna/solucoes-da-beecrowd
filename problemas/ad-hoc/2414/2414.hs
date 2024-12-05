import Text.Printf

maior :: [Int] -> Int
maior [] = 0
maior (numero : resto) = do
  max numero (maior resto)

main :: IO ()
main = do
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  printf "%d\n" (maior numeros)