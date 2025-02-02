import Text.Printf

imprime :: Int -> IO ()
imprime 0 = return ()
imprime x = do
  resposta <- imprime (x - 1)
  entrada <- getLine
  let [altura, espessura, galhos] = map read (words entrada) :: [Int]
  if 200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos
    then printf "Sim\n"
    else printf "Nao\n"

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime n