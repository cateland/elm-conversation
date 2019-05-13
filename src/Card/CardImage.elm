module CardImage exposing (cardImage)

import Element exposing (Element, text, fill, width, height, px)
import Element.Background as Background


type alias CardImage =
    { url : String
    , description : String
    }


cardImage : CardImage -> Element msg
cardImage { url, description } =
    Element.el [Background.image url, width fill, height (px 150)]
        (text "")
