int1 :: Int
int1 = 2 + 5

int2 :: Int
int2 = 3 + 4

int3 :: Int
int3 = ( 3 + 6 ) * 2 - 11

double1 :: Double
double1 = 2 ** 3

double2 :: Double
double2 = 33 / 3

double3 :: Double
double3 = sqrt ( 2234222 ** 3 / 4)

bool1 :: Bool
bool1 = True && True && 1<2 && 2<4

bool2 :: Bool
bool2 = (True && not True && 1<2) || False


divides :: Int -> Int -> Bool
divides x y = mod y x == 0

isLeapYear :: Int -> Bool
isLeapYear x = divides 400 x || (divides 4 x && (divides 100 x == False))