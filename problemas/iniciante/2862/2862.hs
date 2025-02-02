import Text.Printf

imprime :: Int -> IO ()
imprime 0 = return ()
imprime x = do
  n <- readLn :: IO Int
  if n <= 8000 then printf "Inseto!\n" else printf "Mais de 8000!\n"
  imprime (x - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime n