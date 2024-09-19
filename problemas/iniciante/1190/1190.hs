import Text.Printf

leitura :: Int -> Int -> IO (Double, Int)
leitura 11 11 = return (0.0, 0)
leitura i 11 = do
  numero <- readLn :: IO Double
  (media, quantidade) <- leitura (i + 1) 0
  if 11 >= max (i + 1) (12 - i)
    then return (media + numero, quantidade + 1)
    else return (media, quantidade)
leitura i j = do
  numero <- readLn :: IO Double
  (media, quantidade) <- leitura i (j + 1)
  if j >= max (i + 1) (12 - i)
    then return (media + numero, quantidade + 1)
    else return (media, quantidade)

imprime :: String -> Double -> Int -> IO ()
imprime "S" media quantidade = do
  printf "%.1f\n" media
imprime "M" media quantidade = do
  printf "%.1f\n" (media / fromIntegral quantidade)

main :: IO ()
main = do
  t <- getLine
  (media, quantidade) <- leitura 0 0
  imprime t media quantidade