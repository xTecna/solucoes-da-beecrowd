import Data.Char (ord)
import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let l = head entrada
  printf "%d\n" (ord l - ord 'A' + 1)
