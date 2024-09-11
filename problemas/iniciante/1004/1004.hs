main :: IO ()
main = do
a <- readLn :: IO Int
b <- readLn :: IO Int
putStrLn $ id ("PROD = " ++ show(a * b))
