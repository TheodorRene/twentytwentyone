import Data.List(transpose, genericLength)
import Data.Char(digitToInt)
import Control.Applicative(liftA2)
main::IO ()
main = do
  contents <- readFile "../../resources/four.txt"
  let lines_input = lines contents
  let handle = map handleL lines_input
  let (gamma, ep) = doStuff handle
  print . unwords $ map show gamma  -- 784
  print . unwords $ map show ep  -- 3311



handleL :: [Char] -> [Int]
handleL line = map digitToInt line


doStuff :: [[Int]] -> ([Int], [Int])
doStuff dec = unzip $ map (liftA2 (,) handleColumnGamma handleColumnEpsilon) $ transpose dec
-- doStuff dec = unzip $ map (\list -> (handleColumnGamma list,handleColumnEpsilon list)) $ transpose dec
-- Being fancy, these two lines are equal 

-- stolen from the interwebs because doing a simple average is hard with these types
average xs = realToFrac (sum xs) / genericLength xs

handleColumnGamma :: [Int] -> Int
handleColumnGamma col = if most1s then 1 else 0
                where most1s = (average col) > 0.5

handleColumnEpsilon :: [Int] -> Int
handleColumnEpsilon col = if most1s then 0 else 1
                where most1s = (average col) > 0.5
