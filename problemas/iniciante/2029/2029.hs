import System.IO (isEOF)
import Text.Printf

le :: IO ()
le = do
  let pi = 3.14
  eof <- isEOF
  if eof
    then return ()
    else do
      v <- readLn :: IO Double
      d <- readLn :: IO Double
      let area = pi * (d / 2) * (d / 2)
      let altura = v / area
      printf "ALTURA = %.2f\n" altura
      printf "AREA = %.2f\n" area
      le

main :: IO ()
main = le
