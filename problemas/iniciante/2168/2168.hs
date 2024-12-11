import Text.Printf

leitura :: Int -> IO [[Int]]
leitura 0 = return []
leitura n = do
  entrada <- getLine
  let linha = map read (words entrada) :: [Int]
  resto <- leitura (n - 1)
  return (linha : resto)

segura :: [[Int]] -> Int -> Int -> Bool
segura m i j = m !! i !! j + m !! (i + 1) !! j + m !! i !! (j + 1) + m !! (i + 1) !! (j + 1) >= 2

processa :: [[Int]] -> Int -> Int -> Int -> IO ()
processa m i j n
  | i == n = return ()
  | j == n = do
      printf "\n"
      processa m (i + 1) 0 n
  | otherwise = do
      if segura m i j
        then printf "S"
        else printf "U"
      processa m i (j + 1) n

main :: IO ()
main = do
  n <- readLn :: IO Int
  m <- leitura (n + 1)
  processa m 0 0 n