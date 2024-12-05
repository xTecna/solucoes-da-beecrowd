import Text.Printf

processa :: Int -> Int -> IO Int
processa 0 _ = return 0
processa n anterior = do
  atual <- readLn :: IO Int
  if atual /= anterior
    then do
      resposta <- processa (n - 1) atual
      return (resposta + 1)
    else processa (n - 1) anterior

main :: IO ()
main = do
  n <- readLn :: IO Int
  resposta <- processa n (-1)
  printf "%d\n" resposta