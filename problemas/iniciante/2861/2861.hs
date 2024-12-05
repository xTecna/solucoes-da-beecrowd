import Text.Printf

imprime :: Int -> IO ()
imprime 0 = return ()
imprime x = do
  printf "gzuz\n"
  imprime (x - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime n