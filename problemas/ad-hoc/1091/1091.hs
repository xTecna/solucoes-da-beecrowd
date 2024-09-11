import Text.Printf

le :: Int -> Int -> Int -> IO ()
le 0 _ _ = return ()
le p n m = do
  entrada <- getLine
  let [a, b] = map read (words entrada) :: [Int]
  let x = a - n
  let y = b - m
  if x > 0 && y > 0 then printf "NE\n"
  else if x > 0 && y < 0 then printf "SE\n"
  else if x < 0 && y > 0 then printf "NO\n"
  else if x < 0 && y < 0 then printf "SO\n"
  else printf "divisa\n"
  le (p - 1) n m

itera :: Int -> IO ()
itera 0 = return ()
itera x = do
  entrada <- getLine
  let [n, m] = map read (words entrada) :: [Int]
  le x n m
  x <- readLn :: IO Int
  itera x

main :: IO ()
main = do
  n <- readLn :: IO Int
  itera n