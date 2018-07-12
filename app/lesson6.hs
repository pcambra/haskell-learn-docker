multThree:: Num a => a -> a -> a -> a
multThree x y z = x * y * z

compWithHundred :: (Ord a, Num a) => a -> Ordering
--compWithHundred x = compare 100 x
compWithHundred = compare 100


applyTwice :: (a ->a) -> a -> a
applyTwice f x = f (f x)

-- take 5 (zipWith (*) [1..] [10..])

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (a:as) (b:bs) = f a b : zipWith' f as bs

zip' :: [a] -> [b] -> [(a, b)]
-- zip' a b = zipWith (,) a b
zip' = zipWith (,)

flip' :: (a -> b -> c) -> b -> a -> c
flip' f b a = f a b

-- map' :: (a -> b) -> [a] -> [b]

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (a:as)
  | p a = a : filter' p as
  | otherwise = filter' p as


-- find biggest number < 10^5 divisible by 3829
-- head (let c x = x `mod` 3829 == 0 in filter c [100000,99999..])

-- find the sum of all odd square numbers <= 10000
sumOddSqNum = sum(takeWhile (<10000) (filter odd (map (^2) [1..])))

-- Collatz conjecture

collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz n
  | even n = n : collatz (div n 2)
  | otherwise = n : collatz(3*n +1)

-- for all 0 < n <=100, how many have a 'collatz' chain legth > 15
collatzChainLengh = let collatzLength n = length n > 15 in length (filter collatzLength (map collatz [1..100]))

-- alt: length (filter (>15) (map length((map collatz [1..100]))))

collatzChainLenghLambdaVersion =  length (filter (\n -> length n > 15) (map collatz [1..100]))

-- Folds are reduces
-- foldl (\b a -> a+b) 0 [1..10]
-- foldl (+) 0 [1..10]

-- sum' = foldl (+) 0
-- sum' = foldl1 (+)

elem' n = foldl (\a x -> a || x ==n) False

map' f = foldr (\ x a -> f x : a) []
map'' f = foldl (\ a x -> a ++ [f x] ) []


maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\ x a -> if x > a then x else a)

reverse' :: [a] -> [a]
reverse' = foldl (\ a x -> x : a) []
-- reverse' foldl (flip() (:)) []

product' :: (Num a) => [a] -> a
product' = foldl1 (*)

filter'' :: (a -> Bool) -> [a] -> [a]
filter'' f = foldr(\ x a -> if f x then x : a else a) []

head' :: [a] -> a
head' = foldr1(\ x _ -> x)
-- head' = foldl1 const

last' :: [a] -> a
last' = foldl1(\ _ x -> x)
-- last' = foldr1 (flip const)


-- How many elements does it take for the sum of the roots of all natural numbers to exceed 1000?
sumOfSqrt = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..])))
-- length $ takeWhile (<=1000) $ scanl1 (+) $ map sqrt [1..]

-- Point free style
-- f x = ceiling (negate (tan (cos ( max 50 x))))
-- f = ceiling . negate . tan . cos . max 50
