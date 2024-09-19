import Data.List (sort)
import System.IO (isEOF)
import Text.Printf

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      entrada <- getLine
      let [v, t] = map read (words entrada) :: [Int]
      printf "%d\n" (v * 2 * t)
      le

main :: IO ()
main = le