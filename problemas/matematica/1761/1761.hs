import System.IO (isEOF)
import Text.Printf

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      entrada <- getLine
      let [a, b, c] = map read (words entrada) :: [Double]
      printf "%.2f\n" (5 * (tan ((a * 3.141592654) / 180.0) * b + c))
      le

main :: IO ()
main = le