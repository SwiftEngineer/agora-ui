module State exposing (Artist(..), State(..))


type State
    = LandingPage
    | OurStory
    | Artists (Maybe Artist)


type Artist
    = Marv
    | Luca
    | Alec
    | Alex
    | Zac
