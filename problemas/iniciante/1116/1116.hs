import Text.Printf

resolve :: Int -> IO ()
resolve 0 = return ()
resolve n = do
  resolve (n - 1)
  entrada <- getLine
  let [x, y] = map read (words entrada) :: [Int]
  if y == 0
    then printf "divisao impossivel\n"
    else printf "%.1f\n" ((fromIntegral x / fromIntegral y) :: Float)

main :: IO ()
main = do
  n <- readLn :: IO Int
  resolve n