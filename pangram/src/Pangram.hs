module Pangram
  ( isPangram
  )
where
import           Data.Char

isPangram :: String -> Bool
isPangram text = pangramCompare $ map toLower text
 where
  pangramCompare c = onAll $ flip elem c
  onAll a = all a ['a' .. 'z']
