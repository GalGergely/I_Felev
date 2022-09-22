collatz :: Int -> [Int]
collatz 1 = [1]
collatz 0 = []
collatz a | a<0=[]
collatz a | a`mod`2 == 0 =(a : collatz (a `div`2))
          | otherwise = (a : collatz ((a*3)+1))

count :: Int -> [Int] -> Int
count a [] = 0
count a [b]  | a==[b]!!0=1
            |otherwise = 0 
count a (x:xs)  | x==a= 1 + count a (xs)
                |otherwise = count a (xs)

replicate' :: Int -> Int -> [Int]
replicate' 0 b = []
replicate' a b | a<0=[]
replicate' 1 b = [b]
replicate' a b = (b:replicate' (a-1) b)

remove :: Int -> [Int] -> [Int]
remove a [] = []
remove a [b]  | a==[b]!!0=[]
              |otherwise =[b]
remove a (x:xs) | a==x=(xs)
                | otherwise = ( x : remove a (xs))

removeAll ::  Int -> [Int] -> [Int]
removeAll a [] = []
removeAll a [b]  | a==[b]!!0=[]
                 |otherwise =[b]
removeAll a (x:xs) | a==x=(removeAll a xs)
                   | otherwise = ( x : removeAll a (xs))

difference :: [Int]->[Int]->[Int]
difference [][]=[]
difference (x:xs) [] = (x:xs)
difference [] (x:xs) = []
difference (x:xs) (y:ys) = difference (removeAll y (x:xs)) ys


removeRepetitions :: [Int] -> [Int]
removeRepetitions []=[]
removeRepetitions [x]=[x]
removeRepetitions [x,y] | x==y=[x]
                        | otherwise = [x,y]
removeRepetitions (x:y:xs)  | x==y=removeRepetitions(x:xs) 
                            | otherwise = (x:removeRepetitions(y:xs))