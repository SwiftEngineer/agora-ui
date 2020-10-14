module View.Tabs.LandingPage exposing (viewLandingPage)

import Element exposing (Element)
import Element.Font as Font
import Msg exposing (Msg)
import View.Background exposing (backgroundWithTabs)


viewLandingPage : Element Msg
viewLandingPage =
    backgroundWithTabs
        [ Element.column
            [ Element.centerX
            , Element.centerY
            , Font.family [ Font.serif ]
            , Element.spacing 10
            ]
            [ Element.el
                [ Element.width (Element.fillPortion 1)
                , Element.alignRight
                , Font.size 50
                , Font.letterSpacing 10
                ]
                (Element.text "原来如此 Agora Records")
            , Element.el [] Element.none
            , Element.el [] Element.none
            , image1
            ]
        ]


image1 : Element Msg
image1 =
    Element.image
        []
        { src = "https://s3-us-west-2.amazonaws.com/images.thetapin.net/landing-page/000022640020.jpeg"
        , description = "image1"
        }
