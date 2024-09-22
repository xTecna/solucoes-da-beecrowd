import Text.Printf

resolve :: Int -> IO ()
resolve 0 = return ()
resolve n = do
  resolve (n - 1)
  entrada <- getLine
  let [x, y] = map read (words entrada) :: [Int]
  printf "%d cm2\n" ((x * y) `div` 2)

main :: IO ()
main = do
  n <- readLn :: IO Int
  resolve n