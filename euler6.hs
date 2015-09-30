problem_6 = (foldl (+) 0 [1..100])^2 - (foldl (+) 0 [x^2 | x <- [1..100]])
