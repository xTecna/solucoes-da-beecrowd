import Text.Printf

avalia :: [Int] -> [Int] -> IO (Bool)
avalia [] [] = return True
avalia (x: listax) (y: listay) = do
  if x == y then return False else avalia listax listay

main :: IO ()
main = do
  entrada <- getLine
  let x = map read (words entrada) :: [Int]
  entrada <- getLine
  let y = map read (words entrada) :: [Int]
  compativel <- avalia x y
  if compativel then printf "Y\n" else printf "N\n"