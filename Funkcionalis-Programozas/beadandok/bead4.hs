take2 :: [Int] -> [Int]
take2 (x:y:xs) = [x,y]
take2 [x] = [x]
take2 [] = []

sum3 :: [Int] -> Int
sum3 (x:y:z:xs) = x+y+z
sum3 [x,y] = x+y
sum3 [x] = x
sum3 [] = 0

safeHead :: Int -> [Int] -> Int
safeHead _ (x:xs)= x
safeHead x [] =x

f :: [[Int]] -> Bool
f [[x], (y:ys)] = True
f _ = False