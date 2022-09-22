stretch :: (Double , Double) -> Double -> (Double , Double)
stretch x y= (fst x * y, snd x * y)

matches :: (Int , Int) ->(Int, Int) -> Bool
matches x y= (fst x == fst y || fst x == snd y || snd x == fst y || snd x ==snd y)