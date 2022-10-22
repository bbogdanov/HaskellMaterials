module NewTypesExercise where

import Data.Time (Day)
import Prelude

newtype Meters = Meters Float
  deriving (Eq, Show)

newtype Kilometers = Kilometers Float
  deriving (Eq, Show)

newtype Username = Username String
  deriving (Eq, Show)

addMeters :: Meters -> Meters -> Meters
addMeters (Meters a) (Meters b) = Meters (a + b)

metersToKilometers :: Meters -> Kilometers
metersToKilometers (Meters x) = Kilometers (x / 1000)

usernameLength :: Username -> Int
usernameLength (Username x) = length x

data StringAndLength = StringAndLength {
    lengthOfString :: Int,
    string :: String
  }
  deriving (Eq, Show)

stringAndLength :: String -> StringAndLength
stringAndLength x = StringAndLength { lengthOfString = length x, string = x }


data Product = Product {
    name :: String,
    price :: Float,
    taxationRate :: Float
  }
  deriving (Eq, Show)


totalPrice :: Product -> Float
totalPrice Product { price, taxationRate } = price + (price * taxationRate)

data DivisionResult
  = DivideSuccess Float
  | DivisionByZero
  deriving (Show)

divisionOrDefault :: Float -> DivisionResult -> Float
divisionOrDefault x DivisionByZero = x
divisionOrDefault _ (DivideSuccess y) = y 


data RelationshipStatus
  = MarriedTo MarriageInfo
  | MarriedTo NoSpouse
  | EngagedTo UserProfile
  | ItsComplicated
  | Single
  deriving (Eq, Show)

data MarriageInfo = MarriageInfo { spouse :: Spouse, date :: Day }
  deriving (Eq, Show)

data UserProfile = UserProfile { name :: String, date :: Day }
  deriving (Eq, Show)

data Spouse = Spouse String | NoSpouse
 deriving (Eq, Show)

spouseName :: RelationshipStatus -> Spouse
spouseName (MarriedTo MarriageInfo {spouse}) = spouse
spouseName MarriedTo NoSpouse = NoSpouse
spouseName _ = NoSpouse
