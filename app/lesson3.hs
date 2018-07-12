-- triangle = [(a,b,c) | a<-[1..20], b<-[1..20], c<-[1..20], a^2+b^2==c^2, a <= b, b <= c]

removeOddLists p = [ x | x <- p, even (length x)]
