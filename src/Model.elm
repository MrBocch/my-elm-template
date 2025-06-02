module Model exposing (Model, Msg(..), init)

import Time exposing (Posix)

type alias Model = Int

initModel : Model
initModel = 0

init : () -> (Model, Cmd Msg)
init _ = (initModel, Cmd.none)

type Msg
    = Increment
    | Decrement
    | Tick Posix
