import Text.Printf

substring :: String -> Int -> Int -> String
substring str a b = take (b - a) (drop a str)

processa :: Int -> IO ()
processa 0 = return ()
processa n = do
  entrada <- getLine
  let parte1 = read (substring entrada 2 4) :: Int
  let parte2 = read (substring entrada 5 8) :: Int
  let parte3 = read (substring entrada 11 13) :: Int
  printf "%d\n" (parte1 + parte2 + parte3)
  processa (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n