import Text.Printf

leitura :: IO (Int, Int)
leitura = do
  entrada <- getLine
  let palavras = words entrada
  if head palavras == "ABEND"
    then return (0, 0)
    else do
      let numero = read (head (tail palavras)) :: Int
      (pessoas, jipes) <- leitura
      if head palavras == "SALIDA"
        then return (pessoas + numero, jipes + 1)
        else return (pessoas - numero, jipes - 1)

main :: IO ()
main = do
  (pessoas, jipes) <- leitura
  printf "%d\n" pessoas
  printf "%d\n" jipes
