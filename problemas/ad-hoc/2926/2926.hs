import Text.Printf

processa :: Int -> String
processa 0 = ""
processa n = do
  let resposta = processa (n - 1)
  "a" ++ resposta

main :: IO ()
main = do
  n <- readLn :: IO Int
  let grito = processa n
  printf "Ent%so eh N%st%sl!\n" grito grito grito