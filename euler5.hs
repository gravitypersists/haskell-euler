import Data.List

isDivisibleByAll :: Int -> [Int] -> Bool
isDivisibleByAll a b = all (\x -> a `mod` x == 0) b

problem_5 = find (`isDivisibleByAll` [1..20]) [1..]

-- Takes a long time to solve for 20.
-- There's probably a mathematical trick I need to leverage.
