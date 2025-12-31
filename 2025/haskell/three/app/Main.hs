import Text.ParserCombinators.ReadP
import Data.Char (isDigit)

-- Parser for up to 3-digit numbers
number :: ReadP Int
number = read <$> munch1 isDigit

-- Parser for "mul(X,Y)"
mulParser :: ReadP (Int, Int)
mulParser = do
  _ <- string "mul("
  x <- number
  _ <- char ','
  y <- number
  _ <- char ')'
  return (x, y)

-- Skip irrelevant characters until we find "mul("
skipGarbage :: ReadP ()
skipGarbage = skipMany $ satisfy (\c -> c /= 'm')

-- Main parser to find all "mul(X,Y)"
parseAllMul :: ReadP [(Int, Int)]
parseAllMul = many $ skipGarbage *> mulParser <* skipGarbage

-- Function to run the parser
parseMulInstances :: String -> [(Int, Int)]
parseMulInstances input =
  case readP_to_S (parseAllMul <* eof) input of
    [(result, "")] -> result
    _              -> []

-- Example usage
main :: IO ()
main = do
  let input = "xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"
  print $ parseMulInstances input
