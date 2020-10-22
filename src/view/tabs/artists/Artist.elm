module View.Tabs.Artists.Artist exposing (button, view)

import Element exposing (Element)
import Element.Font as Font
import Element.Input as Input
import Msg exposing (Msg(..))
import State exposing (Artist)
import View.Background exposing (backgroundWithTabs)


view : String -> Element Msg -> Element Msg -> Element Msg -> Element Msg -> Element Msg
view name image soundCloudLink appleMusicLink spotifyLink =
    backgroundWithTabs
        [ Element.row
            [ Element.spacing 25
            ]
            [ Element.el [] Element.none
            , Element.column
                [ Element.alignTop
                , Element.spacing 10
                ]
                [ Element.el
                    [ Font.size 50
                    , Font.family [ Font.serif ]
                    , Font.letterSpacing 10
                    , Font.italic
                    , Font.semiBold
                    ]
                    (Element.text name)
                , Element.el [] Element.none
                , image
                ]
            , Element.el [] Element.none
            , Element.column
                [ Element.spacing 10
                ]
                [ Element.el [] Element.none
                , Element.row [ Element.spacing 10 ] [ soundCloudLink, appleMusicLink ]
                , spotifyLink
                ]
            ]
        ]


button : String -> Artist -> Element Msg -> Element Msg
button name artist image =
    Input.button
        []
        { onPress = Just (ClickedArtist artist)
        , label = label name image
        }


label : String -> Element Msg -> Element Msg
label name image =
    Element.row
        [ Element.spacing 50
        ]
        [ image
        , Element.el
            [ Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            , Font.italic
            , Font.semiBold
            ]
            (Element.text name)
        ]
