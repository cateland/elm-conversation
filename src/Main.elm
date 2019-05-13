module Main exposing (main)

import Browser
import CardContainer exposing (cardContainer)
import CardDescription exposing (cardDescription)
import CardImage exposing (cardImage)
import CardLinkAction exposing (cardLinkAction)
import Element exposing (Element)


card =
    { image =
        { url = "http://via.placeholder.com/300"
        , description = "something computer"
        }
    , description =
        { title = Just "Delivery & Pickup"
        , text = Just "Learn more about dispatch and delivery times, methods and costs."
        }
    , actions =
        [ { url = "https://youtu.be/dQw4w9WgXcQ", title = "Delivery options" }
        , { url = "https://youtu.be/dQw4w9WgXcQ", title = "Pickup points" }
        , { url = "https://youtu.be/dQw4w9WgXcQ", title = "Trackings & notifications" }
        , { url = "https://youtu.be/dQw4w9WgXcQ", title = "Change, returns and refunds" }
        ]
    }


main =
    Element.layout []
        (cardContainer
            ([ cardImage card.image
             , cardDescription card.description
             ]
                ++ List.map cardLinkAction card.actions
            )
        )
