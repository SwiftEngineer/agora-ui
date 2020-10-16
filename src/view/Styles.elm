module View.Styles exposing (centeredWithShadow, withShadow)

import Element
import Element.Border as Border
import Msg exposing (Msg)


withShadow : List (Element.Attribute Msg)
withShadow =
    [ Border.shadow
        { offset = ( 0.0, 0.0 )
        , size = 10.0
        , blur = 25.0
        , color = Element.rgb255 110 94 66
        }
    ]


centeredWithShadow : List (Element.Attribute Msg)
centeredWithShadow =
    withShadow ++ [ Element.centerX, Element.centerY ]
