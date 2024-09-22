import Text.Printf

r :: Int -> Int -> Int
r x y = 9 * x * x + y * y

b :: Int -> Int -> Int
b x y = 2 * x * x + 25 * y * y

c :: Int -> Int -> Int
c x y = -100 * x + y * y * y

resolve :: Int -> IO ()
resolve 0 = return ()
resolve n = do
  resolve (n - 1)
  entrada <- getLine
  let [x, y] = map read (words entrada) :: [Int]
  let rafael = r x y
  let beto = b x y
  let carlos = c x y
  if rafael > beto && rafael > carlos
    then printf "Rafael ganhou\n"
    else
      if beto > rafael && beto > carlos
        then printf "Beto ganhou\n"
        else printf "Carlos ganhou\n"

main :: IO ()
main = do
  n <- readLn :: IO Int
  resolve n
