module Update exposing (update)

import Model exposing (Model, Msg(..))

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Increment ->
            ( model + 1
            , Cmd.none
            )

        Decrement ->
            ( model - 1
            , Cmd.none
            )

        Tick _ ->
            ( model + 1
            , Cmd.none
            )
