lucky:: Int -> String
lucky 7 = "WOOOH! Lucky seven!"
lucky _ = "bwap bwap, unlucky!"


factorial::Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x-1)

swap :: (a, b) -> (b, a)
swap (a, b) = (b, a)

firstTuppper:: (a, b, c) -> a
firstTuppper(a, _, _) = a

swapList :: [(a, b)] -> [(b, a)]
swapList x = [ (b, a) | (a, b) <-x]

-- swapList(zip [1..5] "ABCDE")
-- [('A',1),('B',2),('C',3),('D',4),('E',5)]

f :: [Int] -> Int
f [] = 0
f (x:xs) = 2*x

head' :: [a] -> a
head' [] = error "Prelude.head: empty list"
head' (x:_) = x

size :: [a] -> String
size [] = "No elements"
size [x] = "One element"
size (x:y:[]) = "Two elements"
size _ = "Three elements or more"

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length'(xs)

summer :: Num a => [a] -> a
summer [] = 0
summer (x:xs) = x + summer xs

firstLetter :: String -> String
firstLetter whole@(x:_) =
  "The first letter of " ++ whole ++ " is " ++ [x]

drink' :: Int -> String
drink' age
  | age < 16 = "Soda"
  | age < 18 = "Beer"
  | otherwise = "Pecket"

max' :: Ord a => a -> a -> a
max' a b
  | a > b     = a
  | otherwise = b

bmi :: Float -> Float -> Float
bmi w h = b
  where b = w / h^2

initials :: String -> String -> String
initials firstName lastName = [f, l]
  where (f:_) = firstName
        (l:_) = lastName

cylinder:: Double -> Double -> Double
cylinder h r =
    let top = pi*r^2
        side = 2*pi*r*h
    in 2 * top + side

size' :: [a] -> String
size' x = case x of
    [] -> "Empty list"
    [i] -> "We have one element"
    [i,j] -> "Two things"
    _ -> "Other"
