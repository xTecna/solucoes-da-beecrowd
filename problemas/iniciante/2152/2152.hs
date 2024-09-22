import Text.Printf

imprime :: Int -> IO ()
imprime 0 = return ()
imprime x = do
  imprime (x - 1)
  entrada <- getLine
  let [h, m, o] = map read (words entrada) :: [Int]
  if o == 1
    then printf "%02d:%02d - A porta abriu!\n" h m
    else printf "%02d:%02d - A porta fechou!\n" h m

main :: IO ()
main = do
  n <- readLn :: IO Int
  imprime n
