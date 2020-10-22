module View.Tabs.Artists.Artists exposing (viewArtists)

import Element exposing (Element)
import Msg exposing (Msg(..))
import View.Background exposing (backgroundWithTabs)
import View.Tabs.Artists.Luca
import View.Tabs.Artists.Marv


viewArtists : Element Msg
viewArtists =
    backgroundWithTabs
        [ Element.column
            [ Element.centerX ]
            [ View.Tabs.Artists.Luca.button
            , View.Tabs.Artists.Marv.button
            ]
        ]
