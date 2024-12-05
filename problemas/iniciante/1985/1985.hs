import Text.Printf

precos :: Int -> Double
precos 1001 = 1.5
precos 1002 = 2.5
precos 1003 = 3.5
precos 1004 = 4.5
precos 1005 = 5.5
precos x = 0.0

processa :: Int -> IO Double
processa 0 = return 0.0
processa p = do
  valor <- processa (p - 1)
  entrada <- getLine
  let [codigo, q] = map read (words entrada) :: [Int]
  return (valor + precos codigo * fromIntegral q)

main :: IO ()
main = do
  p <- readLn :: IO Int
  valor <- processa p
  printf "%.2f\n" valor