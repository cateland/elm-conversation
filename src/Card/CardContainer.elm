module CardContainer exposing (cardContainer)

import Element exposing (Element, px, rgb255, width, spacing, clip)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


cardContainer children =
    Element.column
        [ width (px 280)
        , spacing 1
        , clip
        , Border.rounded 12
        , Border.solid
        , Border.width 1
        , Border.color (rgb255 197 201 207)
        , Background.color (rgb255 197 201 207)
        , Font.family
            [ Font.typeface "Open Sans"
            , Font.sansSerif
            ]
        ]
        children
