import Text.Printf

calcula :: [Int] -> [Int] -> Int
calcula [] _ = 0
calcula (primeiro : segundo : resto) precos = (precos !! primeiro) * segundo + calcula resto precos

processa :: Int -> Int -> [Int] -> IO Int
processa _ 0 _ = return 0
processa d n precos = do
  proximo <- processa d (n - 1) precos
  entradaBolo <- getLine
  let entrada = map read (words entradaBolo) :: [Int]
  let bolo = tail entrada
  let atual = d `div` calcula bolo precos
  return $ max atual proximo

resolve :: Int -> IO ()
resolve 0 = return ()
resolve n = do
  entrada <- getLine
  let [d, i, b] = map read (words entrada) :: [Int]
  entradaPrecos <- getLine
  let precos = map read (words entradaPrecos) :: [Int]
  resposta <- processa d b precos
  printf "%d\n" resposta
  resolve (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  resolve n
