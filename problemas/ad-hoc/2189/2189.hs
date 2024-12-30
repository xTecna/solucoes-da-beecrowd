import Text.Printf

processa :: Int -> [Int] -> Int
processa _ [] = -1
processa i (numero : resto) = do
  if i == numero then numero
  else processa (i + 1) resto

leitura :: Int -> Int -> IO ()
leitura t 0 = return ()
leitura t n = do
  entrada <- getLine
  let numeros = map read (words entrada) :: [Int]
  printf "Teste %d\n%d\n\n" t (processa 1 numeros)
  n <- readLn :: IO Int
  leitura (t + 1) n

main :: IO ()
main = do
  n <- readLn :: IO Int
  leitura 1 n