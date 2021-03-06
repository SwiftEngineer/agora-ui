module View.Tabs.Artists.Artist exposing (button, view)

import Element exposing (Element)
import Element.Font as Font
import Element.Input as Input
import Msg exposing (Msg(..))
import State exposing (Artist)
import View.Background exposing (backgroundWithTabs)
import View.Styles exposing (withShadow)


view : String -> Element Msg -> Element Msg -> Element Msg -> Element Msg -> Element Msg
view name image soundCloudLink appleMusicLink spotifyLink =
    backgroundWithTabs
        [ Element.column
            [ Element.spacing 50
            , Element.centerX
            ]
            [ Element.el
                [ Element.centerX
                , Font.size 50
                , Font.family [ Font.serif ]
                , Font.letterSpacing 10
                , Font.italic
                , Font.semiBold
                ]
                (Element.text name)
            , image
            , linkMatrix
                soundCloudLink
                appleMusicLink
                spotifyLink
            , Element.el [] Element.none
            , Element.el [] Element.none
            , Element.el [] Element.none
            ]
        ]


linkMatrix : Element Msg -> Element Msg -> Element Msg -> Element Msg
linkMatrix soundCloudLink appleMusicLink spotifyLink =
    Element.column
        [ Element.spacing 10
        , Element.centerX
        ]
        [ Element.el [] Element.none
        , Element.row [ Element.spacing 10, Element.centerX ] [ soundCloudLink, appleMusicLink ]
        , Element.row [ Element.spacing 10, Element.centerX ] [ spotifyLink, logo ]
        ]


button : String -> Artist -> Element Msg -> Element Msg
button name artist imageArg =
    Input.button
        []
        { onPress = Just (ClickedArtist artist)
        , label = label name imageArg
        }


label : String -> Element Msg -> Element Msg
label name imageArg =
    Element.column
        [ Element.spacing 10
        ]
        [ Element.el
            [ Element.centerX
            , Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            , Font.italic
            , Font.semiBold
            ]
            (Element.text name)
        , imageArg
        ]


logo : Element Msg
logo =
    Element.image
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/artists/agora500x282.jpeg"
        , description = "agora logo scaled 500 in width"
        }
