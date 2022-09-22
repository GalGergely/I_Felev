type Dictionary = [(Char, Integer)]
dictionary :: [Char] -> Dictionary
dictionary x = zip x [1..]
dictionary_az = dictionary ['a'..'z']
dictionary_az_AZ = dictionary (['a'..'z']  ++ ['A'..'Z'])

isPrime :: Integer -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n = odd n && null [d | d <- [3,5..squareRoot n], n `mod` d == 0] where
  squareRoot :: Integer -> Integer
  squareRoot n = floor (sqrt (fromIntegral n))

primeList :: [Integer]
primeList = 2:[ x | x <- [3,5..], isPrime x]

charToNum :: Dictionary -> Char -> Integer
charToNum [] a = 0
charToNum (x:dic) a | fst x == a = snd x
                    | otherwise = charToNum dic a

numToChar :: Dictionary -> Integer -> Char
numToChar [] a = '*'
numToChar (x:dic) a | snd x == a = fst x
                    |otherwise = numToChar dic a

translate :: Dictionary -> String -> [Integer]
translate dic [] = []
translate dic (a:rest) = [charToNum dic a] ++ (translate dic rest)
 
encode :: Dictionary -> String -> Integer
encode dic [] = 1
encode dic [a] = (primeList!!0)^(translate dic [a]!!0)
encode dic a = product[(primeList!!b) ^ (translate dic a!!b) | b <- [0..(length a)-1] ]

primeSeged :: Integer -> Integer
primeSeged 1 = 1
primeSeged x = head [b | b <- primeList, x `mod` b == 0]

primeFactorization :: Integer -> [Integer]
primeFactorization 1 = []
primeFactorization x = (primeSeged x : primeFactorization (x `div` primeSeged x))