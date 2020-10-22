module View.Tabs.Artists.Spotify exposing (image)

import Element exposing (Element)
import Msg exposing (Msg)


image : Element Msg
image =
    Element.image
        []
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/spotify.jpg"
        , description = "Spotify"
        }
