mirrorX :: (Int, Int) -> (Int, Int)
mirrorX x = (fst x, snd x*(-1))

isDigit :: Char -> Bool
isDigit x = elem x ['0'..'9']

onAxis :: (Double, Double) -> Bool
onAxis (_, 0) = True
onAxis (0, _) = True
onAxis (_, _) = False