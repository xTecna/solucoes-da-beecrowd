import Text.Printf

somaPA :: Int -> Int -> Int -> Int
somaPA a1 an n = (floor (fromIntegral (n * (a1 + an)) / fromIntegral 2))

leitura :: Int -> IO ()
leitura 0 = return ()
leitura t = do
  n <- readLn :: IO Int
  printf "%d\n" ((somaPA 1 n n) + 1)
  leitura (t - 1)

main :: IO ()
main = do
  t <- readLn :: IO Int
  leitura t