import Text.Printf

imprime :: Int -> Int -> IO ()
imprime i n = do
  if i <= n
    then do
      if (mod n i) == 0
        then do
          printf "%d\n" i
          imprime (i + 1) n
        else imprime (i + 1) n
    else return ()

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime 1 n
