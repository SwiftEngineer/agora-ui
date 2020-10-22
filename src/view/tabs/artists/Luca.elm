module View.Tabs.Artists.Luca exposing (button, view)

import Element exposing (Element)
import Element.Font as Font
import Element.Input as Input
import Msg exposing (Msg(..))
import State exposing (Artist(..))
import View.Background exposing (backgroundWithTabs)
import View.Styles exposing (withShadow)
import View.Tabs.Artists.SoundCloud as SoundCloud


view : Element Msg
view =
    backgroundWithTabs
        [ Element.row
            [ Element.spacing 50
            , Element.centerX
            ]
            [ image2
            , Element.column
                [ Element.alignTop
                , Element.spacing 10
                ]
                [ Element.el
                    [ Font.size 50
                    , Font.family [ Font.serif ]
                    , Font.letterSpacing 10
                    ]
                    (Element.text "原来如此 Shailu . . . ")
                , Element.el [] Element.none
                , soundCloudLink
                ]
            ]
        ]


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
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/artists/lucas/000019710037.jpeg"
        , description = "luca"
        }


image2 : Element Msg
image2 =
    Element.image
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/artists/lucas/000019710037.jpeg"
        , description = "luca"
        }


soundCloudLink : Element Msg
soundCloudLink =
    Element.newTabLink
        []
        { url = "https://soundcloud.com/shailuchamploo"
        , label = SoundCloud.image
        }
