import Text.Printf

main :: IO ()
main = do
distancia <- readLn :: IO Int

putStrLn $ show (2 * distancia) ++ " minutos"