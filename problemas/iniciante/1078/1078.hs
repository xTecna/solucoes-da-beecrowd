import Text.Printf

diferenca :: Int -> Int -> IO ()
diferenca 11 n = return ()
diferenca i n = do
  printf "%d x %d = %d\n" i n (i * n)
  diferenca (i + 1) n

main :: IO ()
main = do
  entrada <- readLn :: IO Int
  diferenca 1 entrada