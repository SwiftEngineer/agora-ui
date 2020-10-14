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
            , Font.family [ Font.serif ]
            ]
            [ image1
            , Element.el
                [ Element.width (Element.fillPortion 1)
                ]
                Element.none
            , Element.el
                [ Element.width (Element.fillPortion 1)
                , Element.alignRight
                , Font.size 50
                , Font.letterSpacing 10
                ]
                (Element.text "原来如此 Agora Records")
            ]
        ]


image1 : Element Msg
image1 =
    Element.image
        [ Element.width (Element.fillPortion 10)
        ]
        { src = "https://s3-us-west-2.amazonaws.com/images.thetapin.net/landing-page/000022640020.jpeg"
        , description = "image1"
        }
