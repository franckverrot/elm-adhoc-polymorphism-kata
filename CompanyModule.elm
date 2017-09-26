module CompanyModule exposing (..)

import NumDict exposing (..)

type alias Company = { headCount : Int }

-- the next 3 functions are funny :-D

addCompany : Company -> Company -> Company
addCompany c1 c2 = { c1 | headCount = c1.headCount + c2.headCount }

mulCompany : Company -> Company -> Company
mulCompany c1 c2 = { c1 | headCount = c1.headCount * c2.headCount }

negCompany : Company -> Company
negCompany c1    = { c1 | headCount = -c1.headCount }

showCompany : Company -> String
showCompany c = "showCompany: " ++ (toString <| c.headCount)

numDCompany : NumD Company
numDCompany = NumDict addCompany mulCompany negCompany showCompany

type alias CompanyV = { value : Company, dict : NumD Company }

makeCompany : Company -> CompanyV
makeCompany c = { value = c, dict = numDCompany }
