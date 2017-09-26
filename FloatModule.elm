module FloatModule exposing (..)

import NumDict exposing (..)

addFloat : Float -> Float -> Float
addFloat = (+)

mulFloat : Float -> Float -> Float
mulFloat = (*)

negFloat : Float -> Float
negFloat = flip (-) 0.0

showFloat : Float -> String
showFloat x = "showFloat: " ++ (toString x)

numDFloat : NumD Float
numDFloat = NumDict addFloat mulFloat negFloat showFloat

type alias FloatV = { value : Float, dict : NumD Float }

makeFloat : Float -> FloatV
makeFloat f = { value = f, dict = numDFloat }
