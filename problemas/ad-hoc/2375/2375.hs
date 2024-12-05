import Text.Printf

main :: IO ()
main = do
  diametro <- readLn :: IO Int
  entrada <- getLine
  let [altura, largura, profundidade] = map read (words entrada) :: [Int]

  if (diametro <= altura && diametro <= largura && diametro <= profundidade) then
    printf "S\n"
  else
    printf "N\n"