import Text.Printf

imprime :: Int -> IO ()
imprime 9 = do
  printf "I=9 J=7\n"
  printf "I=9 J=6\n"
  printf "I=9 J=5\n"
imprime i = do
  printf "I=%d J=7\n" i
  printf "I=%d J=6\n" i
  printf "I=%d J=5\n" i
  imprime (i + 2)

main :: IO ()
main = imprime 1