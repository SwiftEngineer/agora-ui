module Main exposing (main)

-- MAIN

import Browser
import Element exposing (Element)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
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
    | OurStory
    | Artists



-- UPDATE


type Msg
    = ClickedTab State


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


background : List (Element.Attribute Msg)
background =
    [ Background.color (Element.rgb255 245 239 220)
    , Element.width Element.fill
    , Element.height Element.fill
    ]


tabs : Element Msg
tabs =
    Element.row
        [ Element.moveRight 100
        , Element.spacing 50
        ]
        [ tab "Home" (ClickedTab LandingPage)
        , tab "Our Story" (ClickedTab OurStory)
        , tab "Artists" (ClickedTab Artists)
        ]


tab : String -> Msg -> Element Msg
tab label msg =
    Input.button
        [ Element.paddingXY 10 3
        , Border.innerGlow (Element.rgb255 133 94 66) 1.5
        ]
        { onPress = Just msg
        , label = Element.text label
        }


viewLandingPage : Element Msg
viewLandingPage =
    Element.column
        background
        [ tabs
        , Element.row
            [ Element.alignRight
            , Element.centerY
            , Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            ]
            [ Element.text "原来如此 Agora Records"
            ]
        ]


viewOurStory : Element Msg
viewOurStory =
    Element.column
        background
        [ tabs
        , Element.row
            [ Element.alignRight
            , Element.centerY
            , Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            ]
            [ Element.text "原来如此 Our Story . . . "
            ]
        ]


viewArtists : Element Msg
viewArtists =
    Element.column
        background
        [ tabs
        , Element.row
            [ Element.alignRight
            , Element.centerY
            , Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            ]
            [ Element.text "原来如此 Artists . . . "
            ]
        ]
