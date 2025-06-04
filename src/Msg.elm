module Msg exposing (Msg(..))

import Time exposing (Posix)

type Msg
    = Increment
    | Decrement
    | Tick Posix