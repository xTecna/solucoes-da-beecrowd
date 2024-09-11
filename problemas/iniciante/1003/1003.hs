main :: IO ()
main = do
a <- readLn :: IO Int
b <- readLn :: IO Int
putStrLn $ id ("SOMA = " ++ show(a + b))
