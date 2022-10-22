module Questions where

import Prelude

biggest :: Int -> Int -> Int
biggest x y 
  | x > y = x
  | otherwise = y

smallest :: Int -> Int -> Int
smallest x y 
  | x > y = y
  | otherwise = x

subtractPositive :: Int -> Int -> Int
subtractPositive x y 
  | x > y = x - y
  | otherwise = 0

clampByteValue :: Int -> Int
clampByteValue x 
  | 255 > x && x > 0 = x
  | x > 255 = 255
  | otherwise = 0