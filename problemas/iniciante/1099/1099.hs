import Text.Printf

quantidadeImpares :: Int -> Int -> Int
quantidadeImpares a b = div (b - a) 2 + 1

somaPA :: Int -> Int -> Int -> Int
somaPA a1 an n = div ((a1 + an) * n) 2

resolve :: Int -> IO ()
resolve 0 = return ()
resolve n = do
  resolve (n - 1)
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]

  let x = min a b
  let y = max a b
  let c = x + (mod (abs x) 2) + 1
  let d = y - (mod (abs y) 2) - 1

  if c > d then printf "0\n" else printf "%d\n" (somaPA c d (quantidadeImpares c d))

main :: IO ()
main = do
  n <- readLn :: IO Int
  resolve n