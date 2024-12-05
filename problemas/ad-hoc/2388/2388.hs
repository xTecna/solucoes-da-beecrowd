import Text.Printf

leitura :: Int -> IO Int
leitura 0 = return 0
leitura n = do
  entrada <- getLine
  let [v, t] = map read (words entrada) :: [Int]
  resultado <- leitura (n - 1)
  return ((v * t) + resultado)

main :: IO ()
main = do
  n <- readLn :: IO Int
  resultado <- leitura n
  printf "%d\n" resultado