module View.Tabs.OurStory.OurStory exposing (viewOurStory)

import Element exposing (Element)
import Element.Font as Font
import Msg exposing (Msg)
import View.Background exposing (backgroundWithTabs)
import View.Styles exposing (withShadow)


viewOurStory : Element Msg
viewOurStory =
    backgroundWithTabs
        [ Element.row
            [ Element.spacing 25

            -- , Element.alignRight
            ]
            [ Element.el [] Element.none
            , image1
            , Element.el [] Element.none
            , Element.el
                [ Font.size 50
                , Font.family [ Font.serif ]
                , Font.letterSpacing 10
                , Font.italic
                , Font.semiBold
                ]
                (Element.text "原来如此 OUR STORY . . .")
            ]
        ]


image1 : Element Msg
image1 =
    Element.image
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/landing-page/000022640020.jpeg"
        , description = "image1"
        }
