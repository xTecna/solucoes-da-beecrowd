import Text.Printf

main :: IO ()
main = do
a <- readLn :: IO Int
b <- readLn :: IO Int
c <- readLn :: IO Int
d <- readLn :: IO Int
putStrLn $ id ("DIFERENCA = " ++ show((a * b) - (c * d)))
