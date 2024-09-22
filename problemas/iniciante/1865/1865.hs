import Text.Printf

processa :: Int -> IO ()
processa 0 = return ()
processa x = do
  entrada <- getLine
  let [nome, poder] = words entrada
  if nome == "Thor"
    then printf "Y\n"
    else printf "N\n"
  processa (x - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n