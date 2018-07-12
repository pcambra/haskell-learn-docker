boomBang :: Integral a => [a] -> [String]
boomBang p = [ if x < 10 then "BOOM!" else "BANG!" | x <- p, odd x ]

-- excludeNum = [ x | x <- [10..20], x/=13, x/=15, x/=19]

-- excludeNumAlt = [ x | x <- [10..20], not (elem x [13, 15, 19])]

adjs :: [String]
adjs = ["big", "small", "blue"]
nouns = ["car", "house", "triceratops"]
adjNoun = [adj ++ " " ++ noun | adj <- adjs, noun <- nouns]

-- myLength p = sum [ 1 | _<-p ]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase str  = [ x | x <- str, elem x ['A'..'Z']]
