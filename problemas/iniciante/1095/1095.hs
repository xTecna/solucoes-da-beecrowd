import Text.Printf

imprime :: Int -> Int -> IO ()
imprime i 0 = printf "I=%d J=0\n" i
imprime i j = do
  printf "I=%d J=%d\n" i j
  imprime (i + 3) (j - 5)

main :: IO ()
main = imprime 1 60