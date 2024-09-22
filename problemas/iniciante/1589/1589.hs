import Text.Printf

processa :: Int -> IO ()
processa 0 = return ()
processa x = do
  entrada <- getLine
  let [r1, r2] = map read (words entrada) :: [Int]
  printf "%d\n" (r1 + r2)
  processa (x - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n