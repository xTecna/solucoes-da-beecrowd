import Text.Printf

processa :: Int -> IO ()
processa 0 = return ()
processa t = do
  n <- readLn :: IO Int
  printf "%d\n" (mod n 2)
  processa (t - 1)

main :: IO ()
main = do
  t <- readLn :: IO Int
  processa t
