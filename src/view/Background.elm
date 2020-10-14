module View.Background exposing (background)

import Element
import Element.Background as Background
import Msg exposing (Msg)


background : List (Element.Attribute Msg)
background =
    [ Background.color (Element.rgb255 245 239 220)
    , Element.width Element.fill
    , Element.height Element.fill
    ]
