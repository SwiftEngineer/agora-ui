module View.Tabs.LandingPage.LandingPage exposing (viewLandingPage)

import Element exposing (Element)
import Element.Font as Font
import Msg exposing (Msg)
import View.Background exposing (backgroundWithTabs)
import View.Styles exposing (withShadow)


viewLandingPage : Element Msg
viewLandingPage =
    backgroundWithTabs
        [ Element.column
            [ Element.centerX
            , Element.centerY
            , Element.spacing 10
            ]
            [ Element.el
                [ Font.size 50
                , Font.letterSpacing 10
                , Font.family [ Font.serif ]
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
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/images.thetapin.net/landing-page/000022640020.jpeg"
        , description = "image1"
        }
