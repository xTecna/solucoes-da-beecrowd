import Text.Printf

processa :: Int -> [Int] -> [Int]
processa n [] = [0, 0, 0, 0]
processa n (numero : numeros) = do
  let [dois, tres, quatro, cinco] = processa n numeros
  let d = if mod numero 2 == 0 then 1 else 0
  let t = if mod numero 3 == 0 then 1 else 0
  let q = if mod numero 4 == 0 then 1 else 0
  let c = if mod numero 5 == 0 then 1 else 0
  [dois + d, tres + t, quatro + q, cinco + c]

main :: IO ()
main = do
  t <- readLn :: IO Int
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  let [dois, tres, quatro, cinco] = processa t numeros
  printf "%d Multiplo(s) de 2\n" dois
  printf "%d Multiplo(s) de 3\n" tres
  printf "%d Multiplo(s) de 4\n" quatro
  printf "%d Multiplo(s) de 5\n" cinco