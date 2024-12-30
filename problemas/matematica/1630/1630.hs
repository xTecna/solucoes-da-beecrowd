import System.IO (isEOF)
import Text.Printf

mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (mod a b)

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      entrada <- getLine
      let [x, y] = map read (words entrada) :: [Int]
      printf "%d\n" (2 * ((div x (mdc x y)) + (div y (mdc x y))))
      le

main :: IO ()
main = le