import Text.Printf

imprime :: Int -> IO Int
imprime 0 = return 0
imprime x = do
  resposta <- imprime (x - 1)
  x <- readLn :: IO Int
  if x /= 1
    then return (resposta + 1)
    else return resposta

main :: IO ()
main = do
  n <- readLn :: IO Int
  resposta <- imprime n
  printf "%d\n" resposta