import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [p1, c1, p2, c2] = map read (words entrada) :: [Int]
  let diferenca = p2 * c2 - p1 * c1
