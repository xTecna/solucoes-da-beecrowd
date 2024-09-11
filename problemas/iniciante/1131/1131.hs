import Text.Printf

leitura2 :: Int -> IO Int
leitura2 1 = return 1
leitura2 2 = return 2
leitura2 _ = do
  printf "Novo grenal (1-sim 2-nao)\n"
  n <- readLn :: IO Int
  leitura2 n

leitura :: IO (Int, Int, Int)
leitura = do
  entrada <- getLine
  let [i, g] = map read (words entrada) :: [Int]
  let (inter, gremio, empate) =
        if i > g
          then (1, 0, 0)
          else
            if i == g
              then (0, 0, 1)
              else (0, 1, 0)
  n <- leitura2 0
  if n == 1
    then do
      (i2, g2, e2) <- leitura
      return (inter + i2, gremio + g2, empate + e2)
    else return (inter, gremio, empate)

main :: IO ()
main = do
  (inter, gremio, empate) <- leitura
  printf "%d grenais\n" (inter + gremio + empate)
  printf "Inter:%d\n" inter
  printf "Gremio:%d\n" gremio
  printf "Empates:%d\n" empate
  if inter > gremio && inter > empate
    then printf "Inter venceu mais\n"
    else
      if gremio > inter && gremio > empate
        then printf "Gremio venceu mais\n"
        else printf "Nao houve vencedor\n"
