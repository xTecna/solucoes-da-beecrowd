import Text.Printf

resolve :: Int -> IO ()
resolve 0 = return ()
resolve n = do
  numero <- readLn :: IO Int
  if numero <= 0
    then printf "X[%d] = 1\n" (10 - n)
    else printf "X[%d] = %d\n" (10 - n) numero
  resolve (n - 1)

main :: IO ()
main = do
  resolve 10