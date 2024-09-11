import Text.Printf

main :: IO ()
main = do
segundos <- readLn :: IO Int
let horas = div segundos 3600
let minutos = div (mod segundos 3600) 60

putStrLn $ (printf "%d:%d:%d" horas minutos (mod (mod segundos 3600) 60))