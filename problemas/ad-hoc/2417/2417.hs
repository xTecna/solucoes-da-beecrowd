import Text.Printf

main :: IO ()
main = do
  entrada <- getLine
  let [cv, ce, cs, fv, fe, fs] = map read (words entrada) :: [Int]
  let cp = 10000 * (3 * cv + ce) + cs
  let fp = 10000 * (3 * fv + fe) + fs
  if cp > fp
    then printf "C\n"
    else if fp > cp
      then printf "F\n"
      else printf "=\n"