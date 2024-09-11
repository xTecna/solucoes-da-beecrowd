import Text.Printf

main :: IO ()
main = do
a <- readLn :: IO Double
b <- readLn :: IO Double
c <- readLn :: IO Double
putStrLn $ id ("MEDIA = " ++ printf "%.1f" ((2 * a + 3 * b + 5 * c)/10))
