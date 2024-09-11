import Text.Printf

main :: IO ()
main = do

x <- readLn :: IO Int
y <- readLn :: IO Double

putStrLn $ (printf "%.3f" ((fromIntegral x)/y) ++ " km/l")
