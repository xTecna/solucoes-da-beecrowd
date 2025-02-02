import Text.Printf

monta :: Int -> Int -> String
monta b e = do
  if b <= e
    then b + (monta (b + 1) e)
    else ""

processa :: Int -> IO ()
processa 0 = return ()
processa n = do
  entrada <- getLine
  let [b, e] = map read (words entrada) :: [Int]
  let resposta = monta b e
  printf "%s%s\n" resposta (reversa resposta)
  processa (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n