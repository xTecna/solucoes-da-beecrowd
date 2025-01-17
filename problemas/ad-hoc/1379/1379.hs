import Text.Printf

processa :: Int -> Int -> IO ()
processa 0 0 = return ()
processa a b = do
  printf "%d\n" (2 * a - b)
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  processa a b

main :: IO ()
main = do
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  processa a b