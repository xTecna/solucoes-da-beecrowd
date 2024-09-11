import Text.Printf

resolve :: Int -> IO ()
resolve 102 = return ()
resolve x = do
    printf "%d\n" x
    resolve (x + 2)

main :: IO ()
main = do
    resolve 2