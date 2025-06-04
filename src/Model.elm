module Model exposing (Model, init)

import Msg exposing (Msg(..))
import Time exposing (Posix)

type alias Model = Int

initModel : Model
initModel = 0

init : () -> (Model, Cmd Msg)
init _ = (initModel, Cmd.none)

