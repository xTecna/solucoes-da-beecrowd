import Text.Printf

imprime :: [Int] -> Int -> IO ()
imprime [] _ = return ()
imprime (numero : resto) x = do
  if numero == 1
    then printf "%d\n" (x + 1)
    else imprime resto (x + 1)

main :: IO ()
main = do
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  imprime numeros 0