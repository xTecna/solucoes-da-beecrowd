import Text.Printf

le3 :: Int -> IO ()
le3 1 = printf "Rolien\n"
le3 2 = printf "Naej\n"
le3 3 = printf "Elehcim\n"
le3 4 = printf "Odranoel\n"
le3 _ = return ()

le2 :: Int -> IO ()
le2 0 = return ()
le2 x = do
  feedback <- readLn :: IO Int
  le3 feedback
  le2 (x - 1)

le :: Int -> IO ()
le 0 = return ()
le x = do
  k <- readLn :: IO Int
  le2 k
  le (x - 1)

main :: IO ()
main = do
  n <- readLn :: IO Int
  le n