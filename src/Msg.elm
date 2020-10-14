module Msg exposing (Msg(..))

import State exposing (Artist, State)


type Msg
    = ClickedTab State
    | ClickedArtist Artist
