{-# LANGUAGE OverloadedStrings #-}
module Bob
  ( responseFor
  )
where

import           Data.Char

responseFor :: String -> String
responseFor xs
  | isYelling xs && hasQuestionMark xs = "Calm down, I know what I'm doing!"
  | hasQuestionMark xs                 = "Sure."
  | isYelling xs                       = "Whoa, chill out!"
  | isAllSpace xs                      = "Fine. Be that way!"
  | otherwise                          = "Whatever."

isYelling :: String -> Bool
isYelling [] = False
isYelling xs = allUpper $ filter isLetter xs
 where
  allUpper [] = False
  allUpper x  = all isUpper x

hasQuestionMark :: [Char] -> Bool
hasQuestionMark [] = False
hasQuestionMark xs = 
  let a = trim xs
  in '?' == (last $ orSpace a)

orSpace :: String -> String
orSpace [] = " "
orSpace xs = xs

isAllSpace :: String -> Bool
isAllSpace []       = True
isAllSpace (x : xs) = isSpace x && isAllSpace xs

trim :: String -> String
trim = f . f
   where f = reverse . dropWhile isSpace