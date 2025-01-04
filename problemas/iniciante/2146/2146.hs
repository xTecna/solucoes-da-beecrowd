import Data.List (sort)
import System.IO (isEOF)
import Text.Printf

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      senha <- readLn :: IO Int
      printf "%d\n" (senha - 1)
      le

main :: IO ()
main = le