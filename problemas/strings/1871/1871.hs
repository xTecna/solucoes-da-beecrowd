import Text.Printf

processa :: Int -> Int -> IO ()
processa 0 0 = return ()
processa m n = do
  let soma = filter (/= '0') (show (m + n))
  printf "%s\n" soma
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  processa a b

main :: IO ()
main = do
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  processa a b