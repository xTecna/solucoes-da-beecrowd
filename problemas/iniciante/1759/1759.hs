import Text.Printf

imprime :: Int -> IO ()
imprime 0 = printf "!\n"
imprime x = do
  printf " Ho"
  imprime (x - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  printf "Ho"
  imprime (n - 1)