import System.IO (isEOF)
import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  if a + b <= n
    then printf "Farei hoje!\n"
    else printf "Deixa para amanha!\n"