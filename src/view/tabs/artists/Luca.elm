module View.Tabs.Artists.Luca exposing (button, view)

import Element exposing (Element)
import Element.Font as Font
import Element.Input as Input
import Msg exposing (Msg(..))
import State exposing (Artist(..))
import View.Background exposing (backgroundWithTabs)


view : Element Msg
view =
    backgroundWithTabs [ image2 ]


button : Element Msg
button =
    Input.button
        []
        { onPress = Just (ClickedArtist Luca)
        , label = label
        }


label : Element Msg
label =
    Element.row
        [ Element.spacing 50
        ]
        [ image1
        , Element.el
            [ Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            ]
            (Element.text "原来如此 Shailu . . . ")
        ]


image1 : Element Msg
image1 =
    Element.image
        []
        { src = "https://s3-us-west-2.amazonaws.com/images.thetapin.net/artists/lucas/000019710037.jpeg"
        , description = "luca"
        }


image2 : Element Msg
image2 =
    Element.image
        [ Element.centerX
        , Element.centerY
        ]
        { src = "https://s3-us-west-2.amazonaws.com/images.thetapin.net/artists/lucas/000019710037.jpeg"
        , description = "luca"
        }
