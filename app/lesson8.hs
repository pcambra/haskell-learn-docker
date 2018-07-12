phonebook:: [(String, String)]

phonebook = [
  ("Jeremie", "111-222-333"),
  ("Ankur", "444-555-666"),
  ("Pedro", "777-888-999")
]

findNumber :: String -> [(String, String)] -> Maybe String
findNumber name [] = Nothing
findNumber name ((n, num): rest)
  | name == n = Just num
  | otherwise findNumber name rest


import Data.Map
