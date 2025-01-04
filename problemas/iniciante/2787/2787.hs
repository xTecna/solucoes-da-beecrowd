import Text.Printf
import Data.Bits (xor)

main :: IO ()
main = do
  l <- readLn :: IO Int
  c <- readLn :: IO Int
  printf "%X\n" (1 - (xor (mod l 2) (mod c 2)))
