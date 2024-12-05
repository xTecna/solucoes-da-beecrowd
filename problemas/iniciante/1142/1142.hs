import Text.Printf

imprime :: Int -> Int -> IO ()
imprime i n = do
  if i < n then do
    printf "%d %d %d PUM\n" i (i + 1) (i + 2)
    imprime (i + 4) n
  else
    return ()

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime 1 (4 * n)