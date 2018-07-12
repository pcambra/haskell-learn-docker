import Data.List
import Data.Char

-- Caesar cipher

encode:: Int -> String -> String
encode n word =
  let num = map ord word
      result = map (+n) num
  in map chr result

-- encode shift = map (chr. (+shift). ord)

decode:: Int -> String -> String
decode shift = encode (negate shift)
