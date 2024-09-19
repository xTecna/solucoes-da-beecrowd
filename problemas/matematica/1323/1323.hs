import Text.Printf

feynman :: Int -> Int
feynman n = feynmanMemo !! n
  where
    feynmanMemo = map feynman' [0 ..]
    feynman' 1 = 1
    feynman' n = feynmanMemo !! (n - 1) + (n * n)

processa :: Int -> IO ()
processa 0 = return ()
processa n = do
  printf "%d\n" (feynman n)
  n <- readLn :: IO Int
  processa n

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n
