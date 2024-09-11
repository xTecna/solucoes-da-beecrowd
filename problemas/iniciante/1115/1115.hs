import Text.Printf

imprime :: Int -> Int -> IO ()
imprime 0 y = return ()
imprime x 0 = return ()
imprime x y = do
  if x > 0
    then
      if y > 0
        then printf "primeiro\n"
        else printf "quarto\n"
    else
      if y > 0
        then printf "segundo\n"
        else printf "terceiro\n"
  entrada <- getLine
  let [x, y] = map read (words entrada) :: [Int]
  imprime x y

main :: IO ()
main = do
  entrada <- getLine
  let [x, y] = map read (words entrada) :: [Int]
  imprime x y
