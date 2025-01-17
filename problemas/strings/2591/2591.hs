import Text.Printf

busca :: String -> Bool -> (Int, String)
busca "" dentro = (0, "")
busca (letra : resto) dentro = do
  if letra == 'a'
    then
      let (tamanho, kame) = busca resto True
      in (tamanho + 1, kame)
    else if dentro
      then (0, resto)
      else busca resto dentro

imprime :: Int -> IO ()
imprime 0 = return ()
imprime n = do
  printf "a"
  imprime (n - 1)

processa :: Int -> IO ()
processa 0 = return ()
processa n = do
  hamekame <- getLine
  let (tamanho1, kame) = busca hamekame False
  let (tamanho2, _) = busca kame False
  printf "k"
  imprime (tamanho1 * tamanho2)
  printf "\n"
  processa (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n