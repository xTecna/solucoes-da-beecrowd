import Text.Printf

imprime :: Int -> IO ()
imprime 0 = return ()
imprime x = do
  resposta <- imprime (x - 1)
  entrada <- getLine
  let [n, k] = map read (words entrada) :: [Int]
  printf "%d\n" (div n k + mod n k)

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime n