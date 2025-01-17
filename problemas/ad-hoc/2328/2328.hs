import Text.Printf

soma :: [Int] -> Int
soma [] = 0
soma (numero : resto) = do
  numero + soma resto

main :: IO ()
main = do
  n <- readLn :: IO Int
  entrada <- getLine
  let divisoes = map read (words entrada) :: [Int]
  printf "%d\n" (soma divisoes - n)