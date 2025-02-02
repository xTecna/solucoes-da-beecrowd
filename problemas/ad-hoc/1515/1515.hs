import Text.Printf

processa :: Int -> Int -> String -> IO (String)
processa 0 menor_ano resposta = return resposta
processa n menor_ano resposta = do
  entrada <- getLine
  let [planeta, ano_str, tempo_str] = words entrada :: [String]
  let ano = read ano_str :: Int
  let tempo = read tempo_str :: Int
  if (ano - tempo < menor_ano)
    then processa (n - 1) (ano - tempo) planeta
    else processa (n - 1) menor_ano resposta

leitura :: IO ()
leitura = do
  n <- readLn
  if (n == 0)
    then return ()
    else do
      resposta <- processa n 9999 ""
      printf "%s\n" resposta
      leitura

main :: IO ()
main = do
  leitura