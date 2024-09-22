import Text.Printf

imprime :: Int -> IO ()
imprime 0 = return ()
imprime x = do
  printf "|                                     |\n"
  imprime (x - 1)

main :: IO ()
main = do
  let line = "---------------------------------------\n"
  printf line
  imprime 5
  printf line