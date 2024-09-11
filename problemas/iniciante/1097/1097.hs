import Text.Printf

imprime :: Int -> Int -> IO ()
imprime 9 j = do
  printf "I=9 J=%d\n" j
  printf "I=9 J=%d\n" (j - 1)
  printf "I=9 J=%d\n" (j - 2)
imprime i j = do
  printf "I=%d J=%d\n" i j
  printf "I=%d J=%d\n" i (j - 1)
  printf "I=%d J=%d\n" i (j - 2)
  imprime (i + 2) (j + 2)

main :: IO ()
main = imprime 1 7