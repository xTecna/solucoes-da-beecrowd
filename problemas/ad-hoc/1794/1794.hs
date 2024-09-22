import Text.Printf

main :: IO ()
main = do
  n <- readLn :: IO Int
  entrada <- getLine
  let [la, lb] = map read (words entrada) :: [Int]
  entrada <- getLine
  let [sa, sb] = map read (words entrada) :: [Int]
  if la <= n && n <= lb && sa <= n && n <= sb
    then printf "possivel\n"
    else printf "impossivel\n"