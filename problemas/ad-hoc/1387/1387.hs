import Text.Printf

le :: Int -> Int -> IO ()
le 0 0 = return ()
le a b = do
  printf "%d\n" (a + b)
  entrada <- getLine
  let [l, r] = map read (words entrada) :: [Int]
  le l r

main :: IO ()
main = do
  entrada <- getLine
  let [l, r] = map read (words entrada) :: [Int]
  le l r