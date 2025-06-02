module Main exposing (..)

import Browser

import Model exposing (Model, Msg(..), init)
import View exposing (view)
import Update exposing (update)
import Subscriptions exposing (subscriptions)


main = Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }
