--insertAt 0 4 [5] == [4, 5]
--insertAt 2 1 [2, 4, 9, 5] == [2, 4, 1, 9, 5]
--insertAt 3 'a' "cfb" == "cfba"
--insertAt (-1) 1 [2] --> hiba
--insertAt 5 1 [2] --> hiba

insertAt :: Int -> Int -> [Int] -> [Int]
insertAt a b [x] | a>0=[x,b]
                 | otherwise [b,x]
insertAt a b (x:xs) = (x:xs)!!a=b 