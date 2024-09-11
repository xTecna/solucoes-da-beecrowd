import Text.Printf

main :: IO ()
main = do
tempo <- readLn :: IO Double
velocidade <- readLn :: IO Double

putStrLn $ (printf "%.3f" ((tempo * velocidade) / 12.0))