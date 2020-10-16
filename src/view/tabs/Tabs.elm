module View.Tabs.Tabs exposing (tabs)

import Element exposing (Element)
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Msg exposing (Msg(..))
import State exposing (State(..))


tabs : Element Msg
tabs =
    Element.row
        [ Element.moveRight 10
        , Element.spacing 50
        ]
        [ tab "HOME" (ClickedTab LandingPage)
        , tab "OUR STORY" (ClickedTab OurStory)
        , tab "ARTISTS" (ClickedTab (Artists Nothing))
        ]


tab : String -> Msg -> Element Msg
tab label msg =
    Input.button
        [ Element.paddingXY 10 3
        , Font.size 35
        , Font.family [ Font.serif ]
        , Font.semiBold
        , Font.letterSpacing 1
        , Font.color (Element.rgb255 200 200 200)
        , Border.widthEach { bottom = 2, left = 0, right = 0, top = 0 }
        ]
        { onPress = Just msg
        , label = Element.text label
        }
