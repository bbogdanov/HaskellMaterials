module BooleanExercise where

import Prelude

and :: Bool -> Bool -> Bool
and True True = True
and _ _ = False

bool :: Int -> Int -> Bool -> Int

bool a _ True = a
bool _ b False = b