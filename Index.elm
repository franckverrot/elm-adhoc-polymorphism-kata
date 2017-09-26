import Html exposing (text, div, br)

import NumDict exposing (..)
import IntModule exposing (..)
import FloatModule exposing (..)
import CompanyModule exposing (..)

square1 : NumD a -> a -> a
square1 numDa x = mul numDa x x

squares : (NumD a, NumD b, NumD c)  -> (a,b,c) -> (a,b,c)
squares (numDa, numDb, numDc) (x, y, z) =
    (square1 numDa x, square1 numDb y, square1 numDc z)

fmt : Int -> String -> String
fmt index textValue =
  (toString index) ++ ": " ++ textValue

main =
  let
    fmt_text index value = fmt index value |> text

    withShow1 =
      [ { headCount = 42 } |> makeCompany |> show1 |> fmt_text 1
      , br [] []

      , 3 |> makeInt |> show1 |> fmt_text 2
      , br [] []

      , 3.0 |> makeFloat |> show1 |> fmt_text 3
      , br [] []

      , { headCount = 42 } |> square1 numDCompany |> makeCompany |> show1 |> fmt_text 4
      , br [] []
      ]

    withShow_ =
      [ { headCount = 42 } |> show_ numDCompany |> fmt_text 1
      , br [] []

      , 3 |> show_ numDInt |> fmt_text 2
      , br [] []

      , 3.0 |> show_ numDFloat |> fmt_text 3
      , br [] []

      , square1 numDInt 3 |> show_ numDInt |> fmt_text 4
      , br [] []

      , square1 numDFloat 3.0 |> show_ numDFloat |> fmt_text 5
      , br [] []

      , square1 numDCompany ({ headCount = 42 }) |> show_ numDCompany |> fmt_text 6
      , br [] []
      ]
  in
    div []
      [ div [] withShow1
      , br [] []
      , div [] withShow_
      ]
