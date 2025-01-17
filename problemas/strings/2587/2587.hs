import Text.Printf

encontraRep :: Char -> String -> Int -> Int -> Int
encontraRep c "" i comeco = -1
encontraRep c (letra : texto) i comeco = do
  if i >= comeco && c == letra
    then i
    else encontraRep c texto (i + 1) comeco

encontra :: Char -> String -> Int -> Int
encontra c texto comeco = encontraRep c texto 0 comeco

processa :: Int -> IO ()
processa 0 = return ()
processa n = do
  palavra1 <- getLine
  palavra2 <- getLine
  secreta <- getLine
  let pos1 = encontra '_' secreta 0
  let pos2 = encontra '_' secreta (pos1 + 1)
  if ((palavra1 !! pos1) == (palavra2 !! pos2)) || ((palavra1 !! pos2) == (palavra2 !! pos1))
    then printf "Y\n"
    else printf "N\n"
  processa (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n