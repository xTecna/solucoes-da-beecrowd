import Text.Printf

processa :: Int -> IO (Double)
processa 0 = return 1000.0
processa n = do
  entrada <- getLine
  let [p, g] = map read (words entrada) :: [Double]
  retorno <- processa (n - 1)
  return (min (p / g) retorno)

main :: IO ()
main = do
  n <- readLn :: IO Int
  resultado <- processa n
  printf "%.2f\n" (1000 * resultado)