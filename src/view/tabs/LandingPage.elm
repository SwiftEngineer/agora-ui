module View.Tabs.LandingPage exposing (viewLandingPage)

import Element exposing (Element)
import Element.Font as Font
import Msg exposing (Msg)
import View.Background exposing (background)
import View.Tabs.Tabs exposing (tabs)


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
