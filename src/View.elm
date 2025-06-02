module View exposing (view)

import Html exposing (..)
import Html.Events exposing (onClick)

import Model exposing (Model, Msg(..))


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "increment" ]
        , h1 [] [ text (String.fromInt model) ]
        , button [ onClick Decrement ] [ text "decrement" ]
        ]
