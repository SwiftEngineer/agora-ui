module View.Background exposing (background, backgroundWithTabs)

import Element exposing (Element)
import Element.Background as Background
import Msg exposing (Msg)
import View.Tabs.Tabs exposing (tabs)


background : List (Element.Attribute Msg)
background =
    [ Background.color (Element.rgb255 245 239 220)
    , Element.width Element.fill
    , Element.height Element.fill
    , Element.scrollbarX
    ]


backgroundWithTabs : List (Element Msg) -> Element Msg
backgroundWithTabs moreElements =
    Element.column
        (background ++ [ Element.spacing 25 ])
        ([ tabs
         , Element.el [] Element.none
         , Element.el [] Element.none
         , Element.el [] Element.none
         , Element.el [] Element.none
         ]
            ++ moreElements
        )
