main = putStrLn "Hello, World!"
-- a)
isMatrix :: [[Int]] -> Bool
isMatrix [] = len []
isMatrix ([x:xs]) = len [x] == isMatrix xs

len :: [Int] -> Bool



--b)
dimensions :: [[Int]] -> (Int,Int)
dimensions [] = (0,0)
dimensions ([[xs]]) | False = (-1,-1)
                    | otherwise = (lenz ([[xs]]),lens ([xs]))

lenz :: [[Int]] -> Int
lenz [] = 0
lenz ([[xs]]) = length ([[xs]])

lens :: [Int] -> Int
lens [] = 0
lens ([xs]) = length ([xs])

--c)
isQuadratic :: [[Int]] -> Bool
isQuadratic [] = False
isQuadratic ([x:xs]) | dimensions ([x:xs]) == (2,2) = True
                     | otherwise = False 

                     
--d)
getRow :: [[Int]] -> Int -> [Int] 
getRow ([x:xs]) i |  not isMatrix [x:xs] = []



getCol :: [[Int]] -> Int -> [Int] 
getCol ([x:xs]) i | not isMatrix [x:xs] = []
