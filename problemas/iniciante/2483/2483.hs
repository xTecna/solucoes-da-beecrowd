import Text.Printf

imprime :: Int -> IO ()
imprime 0 = printf "l!\n"
imprime x = do
  printf "a"
  imprime (x - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  printf "Feliz nat"
  imprime n