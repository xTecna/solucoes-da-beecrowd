import Text.Printf

somaPA :: Integer -> Integer -> Integer -> Integer
somaPA a1 an n = div ((a1 + an) * n) 2

processa :: Integer -> IO ()
processa 0 = return ()
processa n = do
  entrada <- getLine
  let [a, y] = map read (words entrada) :: [Integer]
  let x = a + 1 - (mod (abs a) 2)
  printf "%d\n" (somaPA x (x + 2 * (y - 1)) y)
  processa (n - 1)

main :: IO ()
main = do
  n <- readLn :: IO Integer
  processa n
