import Text.Printf

processa :: Integer -> Integer -> Integer -> Integer -> Integer
processa soma resposta x z = do
  if soma > z
    then resposta
    else processa (soma + x + resposta) (resposta + 1) x z

leitura :: Integer -> IO Integer
leitura x = do
  z <- readLn :: IO Integer
  if z > x
    then return z
    else leitura x

main :: IO ()
main = do
  x <- readLn :: IO Integer
  z <- leitura x
  let resposta = processa x 1 x z
  printf "%d\n" resposta
