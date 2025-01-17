import Text.Printf

processa :: Int -> IO ()
processa 0 = return ()
processa t = do
  entrada <- getLine
  let [n, m] = map read (words entrada) :: [Int]
  let resposta = ceiling ((fromIntegral n - 2) / 3) * ceiling ((fromIntegral m - 2) / 3) :: Int
  printf "%d\n" resposta
  processa (t - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n