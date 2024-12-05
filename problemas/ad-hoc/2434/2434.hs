import Text.Printf

leitura :: Int -> Int -> IO Int
leitura 0 saldo = return saldo
leitura n saldo = do
  movimentacao <- readLn :: IO Int
  let novo_saldo = saldo + movimentacao
  resposta <- leitura (n - 1) novo_saldo
  return (min resposta novo_saldo)

main :: IO ()
main = do
  entrada <- getLine
  let [n, s] = map read (words entrada) :: [Int]
  saldo_depois_das_movimentacoes <- leitura n s
  printf "%d\n" (min saldo_depois_das_movimentacoes s)