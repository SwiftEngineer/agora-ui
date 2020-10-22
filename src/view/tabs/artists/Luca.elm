module View.Tabs.Artists.Luca exposing (button, view)

import Element exposing (Element)
import Msg exposing (Msg(..))
import State exposing (Artist(..))
import View.Styles exposing (withShadow)
import View.Tabs.Artists.AppleMusic as AppleMusic
import View.Tabs.Artists.Artist as Artist
import View.Tabs.Artists.SoundCloud as SoundCloud
import View.Tabs.Artists.Spotify as Spotify


view : Element Msg
view =
    Artist.viewHorizontal
        "原来如此 SHAI LU"
        image2
        soundCloudLink
        appleMusicLink
        spotifyLink


button : Element Msg
button =
    Artist.button
        "原来如此 SHAI LU"
        Luca
        image1


image1 : Element Msg
image1 =
    Element.image
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/artists/lucas/000019710037.jpeg"
        , description = "luca"
        }


image2 : Element Msg
image2 =
    Element.image
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/artists/lucas/000019710037.jpeg"
        , description = "luca"
        }


soundCloudLink : Element Msg
soundCloudLink =
    Element.newTabLink
        withShadow
        { url = "https://soundcloud.com/shailuchamploo"
        , label = SoundCloud.image
        }


spotifyLink : Element Msg
spotifyLink =
    Element.newTabLink
        withShadow
        { url = "https://open.spotify.com/artist/5Qgvqr0l3DeBWNt7gDFdKb?si=aeMkmjx_Qg-QCb6JKK2V9A"
        , label = Spotify.image
        }


appleMusicLink : Element Msg
appleMusicLink =
    Element.newTabLink
        withShadow
        { url = "https://music.apple.com/us/artist/shai-lu/1534265703"
        , label = AppleMusic.image
        }
