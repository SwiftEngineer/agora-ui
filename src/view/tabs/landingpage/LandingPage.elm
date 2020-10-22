module View.Tabs.LandingPage.LandingPage exposing (viewLandingPage)

import Element exposing (Element)
import Msg exposing (Msg)
import View.Background exposing (backgroundWithTabs)


viewLandingPage : Element Msg
viewLandingPage =
    backgroundWithTabs
        [ Element.column
            [ Element.centerX
            , Element.spacing 75
            ]
            [ Element.el [] Element.none
            , logo
            ]
        ]


logo : Element Msg
logo =
    Element.image
        []
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/agora.jpeg"
        , description = "agora logo"
        }
