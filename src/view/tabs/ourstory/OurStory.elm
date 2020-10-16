module View.Tabs.OurStory.OurStory exposing (viewOurStory)

import Element exposing (Element)
import Element.Font as Font
import Msg exposing (Msg)
import View.Background exposing (background)
import View.Tabs.Tabs exposing (tabs)


viewOurStory : Element Msg
viewOurStory =
    Element.column
        background
        [ tabs
        , Element.row
            [ Element.alignRight
            , Element.centerY
            , Font.size 50
            , Font.family [ Font.serif ]
            , Font.letterSpacing 10
            ]
            [ Element.text "原来如此 Our Story . . . "
            ]
        ]
