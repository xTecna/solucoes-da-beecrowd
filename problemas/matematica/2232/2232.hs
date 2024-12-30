import Data.Bits
import Text.Printf

resolve :: Int -> IO ()
resolve 0 = return ()
resolve t = do
  resolve (t - 1)
  n <- readLn :: IO Int
  printf "%d\n" ((1 `shiftL` n) - 1 :: Int)

main :: IO ()
main = do
  t <- readLn :: IO Int
  resolve t
