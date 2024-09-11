import Text.Printf

achaPreco :: [Double] -> Int -> Double
achaPreco [] x = 0
achaPreco (preco:precos) 1 = preco
achaPreco (preco:precos) x = achaPreco precos (x - 1)

main :: IO ()
main = do
    entrada <- getLine
    let precos = [4.00, 4.50, 5.00, 2.00, 1.50]
    let [codigo, quantidade] = map read (words entrada) :: [Int]

    let preco = achaPreco precos codigo
    printf "Total: R$ %.2f\n" (fromIntegral quantidade * preco)