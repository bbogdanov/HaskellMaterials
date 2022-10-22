module Functions where

import Prelude

isZero :: Int -> Bool
isZero x = x == 0

isGreaterThanZero :: Float -> Bool
isGreaterThanZero x = x > 0

addOneTenth :: Double -> Double
addOneTenth x = x + x/10

rectangleArea :: Float -> Float -> Float
rectangleArea = (*)

circleArea :: Float -> Float
circleArea x = pi * (x * x)

bmi :: Float -> Int -> Float
bmi h w = fromIntegral w / (h / 100) ^ (2 :: Int)
