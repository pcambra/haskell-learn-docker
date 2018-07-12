module Shapes (Point, Shape (..), surface) where

--data Bool = False | True

data Point = Point Float Float

data Shape = Circle Point Float
           | Rectangle Point Point
              -- deriving (Show)


instance Show Shape where
  show (Circle (Point x y) r) = "Circle at ("
                        ++ show x
                        ++ ", "
                        ++ show y
                        ++ ") of radius "
                        ++ show r


surface :: Shape -> Float
surface (Circle (Point x y) r) = pi*r^2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = abs(x2 - x1) * abs(y2 - y1)

addPoint :: Point -> Point -> Point
addPoint (Point a b) (Point c d) = Point (a+c) (b+d)

nudge :: Shape -> Point -> Shape
-- nudge (Circle (Point x y) r) n m = (Circle (Point (x+n) (y+m)) r)
-- nudge (Rectangle (Point x1 y1) (Point x2 y2)) n m = (Rectangle (Point (x1+n) (y1+m)) (Point (x2+n) (y2+m)))
nudge (Circle p r) v = Circle (addPoint p v) r
nudge (Rectangle p1 p2) v = Rectangle (addPoint p1 v) (addPoint p2 v)

baseCircle :: Float -> Shape
baseCircle = Circle (Point 0 0)


-- Record

-- data Person = Person String String Int Float String
--                   deriving Show
-- firstName :: Person -> String
-- firstName (Person name _ _ _ _ _) = name

data Person = Person
  { firstName :: String
  , lastName :: String
  , age :: Int
  , height :: Float
  , phone :: String
  , flavor :: String
  } deriving Show

  -- Properties are accessed as functions: age p
  -- p {firstName= "Pedro"}

-- data Maybe a = Nothing | Just a

data Car a b c = Car
    { model   :: a
    , company :: b
    , year    :: c
    }
