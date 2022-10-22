module PartialApplication where

import Prelude

multiplyAllByTwo :: [Int] -> [Int]
multiplyAllByTwo = map (* 2)

squareAll :: [Int] -> [Int]
squareAll = map (^ (2 :: Int))

allZeros :: [Int] -> [Int]
allZeros = filter (== 0)

numbersAboveZero :: [Int] -> [Int]
numbersAboveZero = filter (> 0)

takeBelow10 :: [Int] -> [Int]
takeBelow10 = takeWhile (<= 10)

areAllEven :: [Int] -> Bool
areAllEven = all even