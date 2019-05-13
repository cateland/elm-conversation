module CardLinkAction exposing (cardLinkAction)

import Element exposing (Element, Attr, centerX, centerY, fill, height, mouseOver, paddingXY, px, rgb255, text, width)
import Element.Background as Background
import Element.Font as Font


type alias CardLinkAction =
    { url : String
    , title : String
    }


cardLinkAction : CardLinkAction -> Element msg
cardLinkAction { url, title } =
    Element.link
        [ width fill
        , paddingXY 13 15
        , height (px 39)
        , Font.color (Element.rgb255 0 153 255)
        , Font.size 13
        , Font.center
        , Background.color (rgb255 255 255 255)
        ]
        { url = url, label = text title }
