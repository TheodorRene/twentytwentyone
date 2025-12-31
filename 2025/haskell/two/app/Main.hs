module Main (main) where


main :: IO ()
main = do
    --contents <- readFile "data.txt"
    contents <- readFile "testdata.txt"
    let l = map (map read . words) $ lines contents
    let result = foldl (\acc x -> acc + fromEnum x) 0 (map isIncreasing l)
    let result2 = foldl (\acc x -> acc + fromEnum x) 0 (map isDecreasing l)
    print (result + result2)
    let secondOne = map (isIncreasing2 False) l
    let secondTwo = map (isDecreasing2 False) l
    print secondOne
    print secondTwo

isIncreasing :: [Int] -> Bool
isIncreasing (x:y:xs) = (y - x <= 3 && y - x > 0) && isIncreasing (y:xs)
isIncreasing [_] = True
isIncreasing [] = False

isDecreasing :: [Int] -> Bool
isDecreasing (x:y:xs) = (x - y <= 3 && x - y > 0) && isDecreasing (y:xs)
isDecreasing [_] = True
isDecreasing [] = False


isIncreasing2 ::  Maybe Int -> Bool -> [Int] -> Bool
isIncreasing2 prevValidInt hasRemoved (x:y:xs) = case (isInc, hasRemoved) of
    (Just x, False, False) -> isIncreasing2 (Just x) True (y:xs)
    (False, True) -> False
    (True, False) -> isIncreasing2 False (y:xs)
    (True, True) -> isIncreasing2 True (y:xs)
  where
    isInc = y - x <= 3 && y - x > 0
isIncreasing2 _ [_] = True
isIncreasing2 _ [] = False

isDecreasing2 ::  Bool -> [Int] -> Bool
isDecreasing2 hasRemoved (x:y:xs) = case (isInc, hasRemoved) of
    (False, False) -> isDecreasing2 True (y:xs)
    (False, True) -> False
    (True, False) -> isDecreasing2 False (y:xs)
    (True, True) -> isDecreasing2 True (y:xs)
  where
    isInc = x - y <= 3 && x - y > 0
isDecreasing2 _ [_] = True
isDecreasing2 _ [] = False


