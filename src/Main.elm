module Main exposing (main)

-- MAIN

import Browser
import Element exposing (Element)
import Html exposing (Html)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }



-- MODEL


type alias Model =
    { state : State
    }


initialModel : Model
initialModel =
    { state = LandingPage
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( initialModel, Cmd.none )


type State
    = LandingPage



-- UPDATE


type Msg
    = Click


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    Element.layout [] (elementView model)


elementView : Model -> Element Msg
elementView _ =
    Element.text "Agora Records"
