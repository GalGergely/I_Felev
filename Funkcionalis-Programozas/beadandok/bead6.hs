nthElem :: Int -> Double
nthElem n | n==0 = 1
          | n==1 = 3
          | n>1 = (nthElem(n-1))+sqrt(nthElem(n-2))

allTrue :: [Bool]->Bool
allTrue [] = True
allTrue [x] | x==True=True
            | x==False=False
allTrue (x:xs) | x==True = allTrue xs
                |x==False = False

merge :: [Int]->[Int]->[Int]
merge [x][y]=[x,y]
merge [][] = []
merge [](x:xs)=(x:xs)
merge (x:xs)[]=(x:xs)
merge (x : xs) (y : ys) |xs==[]=(x:y:ys)
                        |ys==[]=(x:y:xs)
                        |otherwise = (x : y : merge(xs)(ys))


qsort :: [Int] -> [Int]
qsort [] = []
qsort (x:xs) = qsort smaller ++ x : qsort greater
  where
    smaller = [y | y <- xs, y < x]
    greater = [y | y <- xs, y >= x]


sortMerge :: [Int]->[Int]->[Int]
sortMerge [][]=[]
sortMerge [](x:xs)=qsort(x:xs)
sortMerge (x:xs)[]=qsort(x:xs)
sortMerge[x][y] | x<y = [x,y]
                | otherwise = [y,x]
sortMerge (x:xs) (y:ys) | x<y = (x : sortMerge(xs)(y:ys))
                        | otherwise = (y : sortMerge(x:xs)(ys))