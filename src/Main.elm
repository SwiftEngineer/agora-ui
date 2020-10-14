module Main exposing (main)

-- MAIN

import Browser
import Element exposing (Element)
import Html exposing (Html)
import Msg exposing (Msg(..))
import State exposing (State(..))
import View.Tabs.Artists exposing (viewArtists)
import View.Tabs.LandingPage exposing (viewLandingPage)
import View.Tabs.OurStory exposing (viewOurStory)


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



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ClickedTab state ->
            ( { model | state = state }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    Element.layout [] (elementView model)


elementView : Model -> Element Msg
elementView model =
    case model.state of
        LandingPage ->
            viewLandingPage

        OurStory ->
            viewOurStory

        Artists ->
            viewArtists
