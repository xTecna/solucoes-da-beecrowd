import Text.Printf

imprime :: Int -> Int -> IO ()
imprime i n = do
  if i <= n
    then do
      printf "%d %d %d\n" i (i * i) (i * i * i)
      imprime (i + 1) n
    else return ()

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime 1 n