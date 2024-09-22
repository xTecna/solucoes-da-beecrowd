import Text.Printf

leitura :: String -> Int
leitura "" = 0
leitura ('0' : resto) = leitura resto
leitura (_ : resto) = 1 + leitura resto

main :: IO ()
main = do
  s <- getLine
  let resposta = leitura s
  printf "%s%d\n" s (mod resposta 2)
