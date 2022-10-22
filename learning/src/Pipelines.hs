module Pipelines where

import Control.Category ((>>>))
import Prelude

multipliedEvenSum :: [Int] -> Int
multipliedEvenSum = filter even >>> map (* 2) >>> sum

isSumOfMultipliedLeadingEvensEven :: [Int] -> Bool
isSumOfMultipliedLeadingEvensEven = takeWhile even >>> multipliedEvenSum >>> even
