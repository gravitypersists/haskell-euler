import Data.List

reverseInt :: Int -> Int
reverseInt = read . reverse . show

isPalindrome :: Int -> Bool
isPalindrome n = n == reverseInt n

problem_4 = find isPalindrome ((reverse . sort) [x * y | x <- [0..999], y <- [0..999]])
