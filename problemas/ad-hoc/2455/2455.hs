import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [p1, c1, p2, c2] = map read (words entrada) :: [Int]
  let diferenca = p2 * c2 - p1 * c1
  if diferenca < 0 then printf "-1\n" else if diferenca == 0 then printf "0\n" else printf "1\n"