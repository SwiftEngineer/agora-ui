module Main exposing (main)

-- MAIN

import Browser
import Element exposing (Element)
import Html exposing (Html)
import Msg exposing (Msg(..))
import State exposing (Artist(..), State(..))
import View.Tabs.Artists.Artists exposing (viewArtists)
import View.Tabs.Artists.Luca
import View.Tabs.Artists.Marv
import View.Tabs.LandingPage.LandingPage exposing (viewLandingPage)
import View.Tabs.OurStory.OurStory exposing (viewOurStory)


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

        ClickedArtist artist ->
            ( { model | state = Artists (Just artist) }, Cmd.none )



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

        Artists maybeArtist ->
            case maybeArtist of
                Just artist ->
                    case artist of
                        Marv ->
                            View.Tabs.Artists.Marv.view

                        Luca ->
                            View.Tabs.Artists.Luca.view

                        Alec ->
                            viewArtists

                        Alex ->
                            viewArtists

                        Zac ->
                            viewArtists

                Nothing ->
                    viewArtists
