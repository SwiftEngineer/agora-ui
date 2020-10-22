module View.Tabs.Artists.Marv exposing (button, view)

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
    Artist.view
        "原来如此 MARV ALI"
        image2
        soundCloudLink
        appleMusicLink
        spotifyLink


button : Element Msg
button =
    Artist.button
        "原来如此 MARV ALI"
        Marv
        image1


image1 : Element Msg
image1 =
    Element.image
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/artists/marv/000022640011.jpeg"
        , description = "marv"
        }


image2 : Element Msg
image2 =
    Element.image
        withShadow
        { src = "https://s3-us-west-2.amazonaws.com/assets.thetapin.net/artists/marv/000022640011.jpeg"
        , description = "marv"
        }


soundCloudLink : Element Msg
soundCloudLink =
    Element.newTabLink
        withShadow
        { url = "https://soundcloud.com/marv_ali"
        , label = SoundCloud.image
        }


spotifyLink : Element Msg
spotifyLink =
    Element.newTabLink
        withShadow
        { url = "https://open.spotify.com/artist/4tfP1Cv7zmcbFlIcouSrsd?si=lTYvLwUbQCWBqI75Vt7F-g"
        , label = Spotify.image
        }


appleMusicLink : Element Msg
appleMusicLink =
    Element.newTabLink
        withShadow
        { url = "https://music.apple.com/us/artist/marv-ali/1460198417"
        , label = AppleMusic.image
        }
