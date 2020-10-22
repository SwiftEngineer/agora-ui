module View.Tabs.Artists.Artist exposing (view)

import Element exposing (Element)
import Element.Font as Font
import Msg exposing (Msg)
import View.Background exposing (backgroundWithTabs)


view : String -> Element Msg -> Element Msg -> Element Msg -> Element Msg -> Element Msg
view name image soundCloudLink appleMusicLink spotifyLink =
    backgroundWithTabs
        [ Element.row
            [ Element.spacing 25
            ]
            [ Element.el [] Element.none
            , image
            , Element.el [] Element.none
            , Element.column
                [ Element.spacing 10
                ]
                [ Element.el
                    [ Font.size 50
                    , Font.family [ Font.serif ]
                    , Font.letterSpacing 10
                    ]
                    (Element.text name)
                , Element.el [] Element.none
                , Element.row [ Element.spacing 10 ] [ soundCloudLink, appleMusicLink ]
                , spotifyLink
                ]
            ]
        ]
