module View.Tabs.Artists.Marv exposing (..)

import Element exposing (Element)
import Element.Border as Border
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
        { onPress = Just (ClickedArtist Marv)
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
            (Element.text "原来如此 Marv Ali . . . ")
        ]


image1 : Element Msg
image1 =
    Element.image
        [ Border.shadow
            { offset = ( 25.0, -15.0 )
            , size = 1.0
            , blur = 10.0
            , color = Element.rgb255 128 128 128
            }
        ]
        { src = "https://s3-us-west-2.amazonaws.com/images.thetapin.net/artists/marv/000022640011.jpeg"
        , description = "marv"
        }


image2 : Element Msg
image2 =
    Element.image
        [ Element.centerX
        , Element.centerY
        , Border.shadow
            { offset = ( 25.0, -15.0 )
            , size = 1.0
            , blur = 10.0
            , color = Element.rgb255 128 128 128
            }
        ]
        { src = "https://s3-us-west-2.amazonaws.com/images.thetapin.net/artists/marv/000022640011.jpeg"
        , description = "marv"
        }
