mountainsValleys  :: [Integer]
mountainsValleys  = concat [[0..n-1] ++ [n, n-1..0-n] ++ [1-n, 2-n..(-1)] | n <- [1..]]

mountainsproba :: [Integer]
mountainsproba = concat [[1..n-1] ++ [n, n-1..2] | n <- [1..]]

isPrime :: Int -> Bool
isPrime n = length [d | d <- [1..n], n `mod` d == 0] == 2

proba :: Int -> Bool
proba p = isPrime(2^p+1) == True

values :: [(Bool, Bool, Bool)]
values = [(a,b,c) | a <- [False,True], b <- [False,True], c <- [False,True], (a || (b && c)) /= ((a || b) && c)]

largestP :: Integer
largestP = head[p | p <-[20,19..1], isPrime(2 ^ p + 1) == True]
