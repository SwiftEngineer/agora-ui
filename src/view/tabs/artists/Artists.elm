module View.Tabs.Artists.Artists exposing (viewArtists)

import Element exposing (Element)
import Msg exposing (Msg(..))
import View.Background exposing (backgroundWithTabs)
import View.Tabs.Artists.Luca


viewArtists : Element Msg
viewArtists =
    backgroundWithTabs
        [ View.Tabs.Artists.Luca.button ]
