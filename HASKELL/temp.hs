{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Redundant bracket" #-}
import Data.Char (ord)

-- Integer
x :: Int
x = 42

-- Floating-point number
piValue :: Double
piValue = 3.1415

-- String
name :: String
name = "Haskell"

-- Boolean
flag :: Bool
flag = True

distance :: (Num a) => a -> a -> a
distance a b = abs (a - b)

roll :: (Num a) => a -> a
roll a = a

folder :: (Num a) => a -> [a] -> a
folder a b = a + sum b

concatt :: [String] -> String
concatt [] = ""
concatt (x : xs) = x ++ concatt xs

-- Define the data type for Rock, Paper, Scissors
data Choice = Rock | Paper | Scissors
  deriving (Show, Eq)

-- A1
isPaper :: Choice -> Bool
isPaper a = (a == Paper)

-- A2
null1 :: [a] -> Bool
null1 a = (length a == 0)

-- A3

-- Main function
main :: IO ()
main = do
  print (distance 3 8)
  print (isPaper Paper)
  print (null1 [])
  -- print (roll "jhvj")
  print (folder 3 [8, 9])
  -- print(concat ["44", "55"])
  print (concatt ["2", "tqw76t", "65565"])

  print "jskdjf"
  print name
  return ()
