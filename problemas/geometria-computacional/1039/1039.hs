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
      let [r1, x1, y1, r2, x2, y2] = map read (words entrada) :: [Double]
      let distancia = dist x1 y1 x2 y2
      if distancia <= (r1 - r2)
        then printf "RICO\n"
        else printf "MORTO\n"
      le

main :: IO ()
main = le