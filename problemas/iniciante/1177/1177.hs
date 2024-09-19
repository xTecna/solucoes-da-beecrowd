import Text.Printf

imprime :: Int -> Int -> IO ()
imprime 1000 n = return ()
imprime i n = do
  printf "N[%d] = %d\n" i (mod i n)
  imprime (i + 1) n

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime 0 n