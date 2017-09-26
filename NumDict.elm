module NumDict exposing (..)

type NumD a = NumDict (a -> a -> a) (a -> a -> a) (a -> a) (a -> String)
add  (NumDict a m n s) = a
mul  (NumDict a m n s) = m
neg  (NumDict a m n s) = n
show (NumDict a m n s) = s

-- Explicit dictionary
show_ : NumD a -> a -> String
show_ numDa a = show numDa a

-- Both dictionary and actual value are stored in this wrapper type
show1 x = show_ x.dict x.value
