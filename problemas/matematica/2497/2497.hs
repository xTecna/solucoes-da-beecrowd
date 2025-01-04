import Text.Printf

leitura :: Int -> IO ()
leitura teste = do
  n <- readLn :: IO Int
  if (n /= -1) then do
    printf "Experiment %d: %d full cycle(s)\n" teste (div n 2)
    leitura (teste + 1)
  else
    return ()

main :: IO ()
main = do
  leitura 1