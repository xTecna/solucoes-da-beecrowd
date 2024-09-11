import Text.Printf

imprime :: Int -> IO ()
imprime 0 = return ()
imprime i = do
  imprime (i - 1)
  let x = 4 * (i - 1) + 1
  printf "%d %d %d PUM\n" x (x + 1) (x + 2)

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime n