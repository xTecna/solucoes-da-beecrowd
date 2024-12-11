import Data.List (isInfixOf)
import Text.Printf

processa :: Int -> IO ()
processa 0 = return ()
processa n = do
  cartas <- getLine
  if ("A" `isInfixOf` cartas) && ("K" `isInfixOf` cartas) && ("Q" `isInfixOf` cartas) && ("J" `isInfixOf` cartas)
    then printf "Aaah muleke\n"
    else printf "Ooo raca viu\n"
  processa (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  processa n