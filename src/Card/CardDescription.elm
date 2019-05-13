module CardDescription exposing (cardDescription)

import Element exposing (Element, paddingXY, rgb255, spacing, text, padding, px)
import Element.Background as Background
import Element.Font as Font

type alias CardDescription =
    { title : Maybe String
    , text : Maybe String
    }


cardDescriptionTitle description =
    case description.title of
        Just value ->
            Element.el [Font.size 15, padding 2] (text value)

        _ ->
            text ""


cardDescriptionText description =
    case description.text of
        Just value ->
            Element.paragraph [Font.size 13, Font.color (rgb255 112 118 137)] [ text value ]

        _ ->
            text ""


cardDescription : CardDescription -> Element msg
cardDescription description =
    Element.column
        [ paddingXY 15 10
        , spacing 5
        , Background.color (rgb255 255 255 255)
        ]
        [ cardDescriptionTitle description
        , cardDescriptionText description
        ]
