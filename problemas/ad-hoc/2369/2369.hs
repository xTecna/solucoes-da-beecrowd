import Text.Printf

taxa :: Int -> [Int] -> [Int] -> Int
taxa n [] [] = 7
taxa n (faixa : faixas) (preco : precos) = do
  if n > faixa
    then ((n - faixa) * preco) + taxa faixa faixas precos
    else taxa n faixas precos

main :: IO ()
main = do
  let faixas = [100, 30, 10] :: [Int]
  let precos = [5, 2, 1] :: [Int]
  n <- readLn :: IO Int
  printf "%d\n" (taxa n faixas precos)