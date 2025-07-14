import System.IO (isEOF)
import Text.Printf

dist :: Double -> Double -> Double -> Double -> Double
dist x1 y1 x2 y2 = sqrt ((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))

le :: IO ()
le = do
  eof <- isEOF
  if eof
    then return ()
    else do
      entrada <- getLine
      let [l, c, r1, r2] = map read (words entrada) :: [Double]
      if l == 0 && c == 0 && r1 == 0 && r2 == 0
        then return ()
        else do
          let [x1, y1, x2, y2] = [r1, r1, l - r2, c - r2]
          let distancia = dist x1 y1 x2 y2
          if l < 2 * r1 || c < 2 * r1 || l < 2 * r2 || c < 2 * r2 || distancia < r1 + r2
            then printf "N\n"
            else printf "S\n"
          le

main :: IO ()
main = le