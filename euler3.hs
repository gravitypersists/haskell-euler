import Data.List
import Data.Maybe

-- 600851475143 % prime === 0

-- inverse_mod a b = mod b a

-- factor n = until (== 0) (`mod` n) primes
--   where
--     primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

-- https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf
primes :: [Int]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]

isFactorOf :: Int -> Int -> Bool
isFactorOf a b = (b `mod` a) == 0

-- how to do this?
-- factorsOf n = factorsOf n []

factorsOf :: Int -> [Int] -> [Int]
factorsOf n xs = xs ++ [(factor n)] ++ factorsOf (n `div` (factor n)) xs
  where
    factor :: Int -> Int
    factor n = fromJust (find (`isFactorOf` n) primes)

-- problem_3 = last factorsOf 600851475143

-- this isn't terminating, I need to figure out how to
-- make it stop recursing
