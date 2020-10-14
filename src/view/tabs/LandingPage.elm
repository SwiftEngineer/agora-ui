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
            [ Element.centerY
            , Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            ]
            [ image1
            , Element.el
                [ Element.moveRight 150
                ]
                (Element.text "原来如此 Agora Records")
            ]
        ]


image1 : Element Msg
image1 =
    Element.image
        [ Element.alignLeft
        , Element.paddingEach { top = 75, right = 19, bottom = 0, left = 19 }
        ]
        { src = "./assets/landing-page/000022640020.jpeg"
        , description = "image1"
        }
