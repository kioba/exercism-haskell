module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year =  not (multipleOf100 year) && multipleOf4 year || multipleOf400 year

isDividibleBy:: Integer -> Integer -> Bool
isDividibleBy by  num = (mod num by) == 0

multipleOf4 :: Integer -> Bool
multipleOf4 = isDividibleBy 4

multipleOf100 :: Integer -> Bool
multipleOf100 = isDividibleBy 100

multipleOf400 :: Integer -> Bool
multipleOf400 = isDividibleBy 400