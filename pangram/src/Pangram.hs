module Pangram (isPangram) where
import Data.List
import Data.Char

isPangram :: String -> Bool
isPangram a = (==) b $ nub $ intersect b $ map toLower a
  where b = ['a'..'z']
