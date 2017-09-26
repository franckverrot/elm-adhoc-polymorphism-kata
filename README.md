# Simple experiment with Elm

## Setup

    git clone <repo>
    elm package install
    elm reactor # open localhost:8000

## Some results

This repo is just the result of a simple experiment with Elm, and Wadler's and
Blott's paper on ad-hoc polymorphism [1].

The bulk of it was to create a dictionary of functions (which is essentially
what will act as a type class in a language like Haskell) that can then be
passed to individual `show<x>` functions, like:

```elm
-- numD<x> dictionaries' show<x> functions are outputing their own kind

{ headCount = 42 } |> show_ numDCompany -- => showCompany: 42
42 |> show_ numDInt -- => showInt: 42
```

We can also abstract the necessity of expliciting the dictionary by wrapping
the value in wrappers, like:


```elm
-- make<x> will create a wrapper value from a base value
-- show1 is of type : Wrapper -> String
-- notice how show1 can be used as is and appear to be polymorphic

{ headCount = 42 } |> makeCompany |> show1 -- => showCompany: 42
42 |> makeInt |> show1 -- => showInt: 42
```


[1]: https://people.csail.mit.edu/dnj/teaching/6898/papers/wadler88.pdf
