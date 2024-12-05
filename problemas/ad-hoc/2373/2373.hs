import Text.Printf

leitura :: Int -> IO Int
leitura 0 = return 0
leitura n = do
  entrada <- getLine
  let [latas, copos] = map read (words entrada) :: [Int]
  resposta <- leitura (n - 1)
  if latas > copos then return (resposta + copos)
  else return resposta

main :: IO ()
main = do
  n <- readLn :: IO Int
  resposta <- leitura n
  printf "%d\n" resposta