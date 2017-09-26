module IntModule exposing (..)

import NumDict exposing (..)

addInt : Int -> Int -> Int
addInt = (+)

mulInt : Int -> Int -> Int
mulInt = (*)

negInt : Int -> Int
negInt = flip (-) 0

showInt : Int -> String
showInt x = "showInt: " ++ (toString x)

numDInt : NumD Int
numDInt = NumDict addInt mulInt negInt showInt

type alias IntV = { value : Int, dict : NumD Int }

makeInt : Int -> IntV
makeInt i = { value = i, dict = numDInt }
