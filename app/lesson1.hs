doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- this is a one line comment

{- this is
a multiple line
comment -}

drink age =
  if age < 16
  then "Soda"
  else if age < 18
    then "Beer"
    else "Pecket"
