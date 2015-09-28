--
-- fib 0 = 0
-- fib 1 = 1
-- fib n = memoized_fib (n-2) + memoized_fib (n-1)
-- sum [r | r <- [ memoized_fib x | x  <- [1..4000000] ], even r ]
-- WRONG.

-- http://stackoverflow.com/questions/6273621/understanding-a-recursively-defined-list-fibs-in-terms-of-zipwith
problem_2 = sum [ x | x <- takeWhile (<= 4000000) fibs, even x]
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
-- ^ cheated on this one
