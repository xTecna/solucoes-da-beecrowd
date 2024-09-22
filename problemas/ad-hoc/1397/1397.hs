import Text.Printf

joga :: Int -> IO (Int, Int)
joga 0 = return (0, 0)
joga x = do
  (jogador1, jogador2) <- joga (x - 1)
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  if a > b
    then return (jogador1 + 1, jogador2)
    else
      if a < b
        then return (jogador1, jogador2 + 1)
        else return (jogador1, jogador2)

le :: Int -> IO ()
le 0 = return ()
le x = do
  (jogador1, jogador2) <- joga x
  printf "%d %d\n" jogador1 jogador2
  x <- readLn :: IO Int
  le x

main :: IO ()
main = do
  n <- readLn :: IO Int
  le n