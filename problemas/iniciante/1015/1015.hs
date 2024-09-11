import Text.Printf

main :: IO ()
main = do

entrada <- getLine
let [x1, y1] = map read (words entrada) :: [Double]
entrada <- getLine
let [x2, y2] = map read (words entrada) :: [Double]

putStrLn $ (printf "%.4f" (sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))))
