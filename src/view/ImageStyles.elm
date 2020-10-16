module View.ImageStyles exposing (centeredWithShadow, withShadow)

import Element
import Element.Border as Border
import Msg exposing (Msg)


withShadow : List (Element.Attribute Msg)
withShadow =
    [ Border.shadow
        { offset = ( 25.0, -15.0 )
        , size = 1.0
        , blur = 10.0
        , color = Element.rgb255 128 128 128
        }
    ]


centeredWithShadow : List (Element.Attribute Msg)
centeredWithShadow =
    withShadow ++ [ Element.centerX, Element.centerY ]
