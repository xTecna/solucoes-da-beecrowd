import Text.Printf

imprime :: Int -> Int -> IO ()
imprime i n = do
  if i < n
    then do
      printf "%d e %c\n" i i
      imprime (i + 1) n
    else return ()

main :: IO ()
main = do
  imprime 97 123