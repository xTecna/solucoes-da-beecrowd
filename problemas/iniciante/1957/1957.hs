import Text.Printf

main :: IO ()
main = do
  v <- readLn :: IO Int
  printf "%X\n" v