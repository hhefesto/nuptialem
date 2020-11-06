{-# LANGUAGE OverloadedStrings, ExtendedDefaultRules #-}

import Lucid
import Lucid.Supplemental
import System.IO (stdout, hSetEncoding, utf8)
import Data.Text.Lazy.IO as L

main :: IO ()
main = do
  hSetEncoding stdout utf8
  L.hPutStr stdout (renderText template1)


-- Template for file: index.html
template1 :: Html ()
template1 = do
  doctype_
  ""
  html_ [ lang_ "en" ] $ do
    ""
    head_ $ do
      ""
      title_ "TITLE"
      ""
      meta_ [ httpEquiv_ "X-UA-Compatible", content_ "IE=edge" ]
      ""
      meta_ [ name_ "viewport", content_ "width=device-width, initial-scale=1" ]
      ""
      meta_ [ charset_ "UTF-8" ]
      ""
      toHtmlRaw  "<!-- Font -->"
      ""
      link_ [ href_ "https://fonts.googleapis.com/css?family=Playball%7CBitter", rel_ "stylesheet" ]
      ""
      toHtmlRaw  "<!-- Stylesheets -->"
      ""
      link_ [ href_ "common-css/bootstrap.css", rel_ "stylesheet" ]
      ""
      link_ [ href_ "common-css/fluidbox.min.css", rel_ "stylesheet" ]
      ""
      link_ [ href_ "common-css/font-icon.css", rel_ "stylesheet" ]
      ""
      link_ [ href_ "01-homepage/css/styles.css", rel_ "stylesheet" ]
      ""
      link_ [ href_ "01-homepage/css/responsive.css", rel_ "stylesheet" ]
      ""
    ""
    body_ $ do
      ""
      header_ $ do
        ""
        div_ [ class_ "container" ] $ do
          ""
          a_ [ class_ "logo", href_ "#" ] $ img_ [ src_ "images/logo-white.png", alt_ "Logo" ]
          ""
          div_ [ class_ "menu-nav-icon", data_ "nav-menu" "#main-menu" ] $ i_ [ class_ "icon icon-bars" ] $ ""
          ""
          ul_ [ class_ "main-menu visible-on-click", id_ "main-menu" ] $ do
            ""
            li_ $ a_ [ href_ "index.html" ] $ "HOME"
            ""
            li_ [ class_ "drop-down" ] $ do
              a_ [ href_ "#!" ] $ do
                "OUR STORIES"
                i_ [ class_ "icon icon-caret-down" ] $ ""
              ""
              ul_ [ class_ "drop-down-menu" ] $ do
                ""
                li_ $ a_ [ href_ "#" ] $ "FEATURED"
                ""
                li_ $ a_ [ href_ "#" ] $ "ABOUT"
                ""
                li_ [ class_ "drop-down" ] $ do
                  a_ [ href_ "#!" ] $ do
                    "CATEGORIES"
                    i_ [ class_ "icon icon-caret-right" ] $ ""
                  ""
                  ul_ [ class_ "drop-down-menu drop-down-inner" ] $ do
                    ""
                    li_ $ a_ [ href_ "#" ] $ "FEATURED"
                    ""
                    li_ $ a_ [ href_ "#" ] $ "ABOUT"
                    ""
                    li_ $ a_ [ href_ "#" ] $ "CATEGORIES"
                    ""
                  ""
                ""
              ""
            ""
            li_ $ a_ [ href_ "03-regular-page.html" ] $ "THER WEDDING"
            ""
            li_ $ a_ [ href_ "#" ] $ "GELLERY"
            ""
            li_ $ a_ [ href_ "02-rsvp.html" ] $ "RSVP"
            ""
          toHtmlRaw  "<!-- main-menu -->"
          ""
        toHtmlRaw  "<!-- container -->"
        ""
      ""
      div_ [ class_ "main-slider" ] $ do
        ""
        div_ [ class_ "display-table center-text" ] $ do
          ""
          div_ [ class_ "display-table-cell" ] $ do
            ""
            div_ [ class_ "slider-content" ] $ do
              ""
              i_ [ class_ "small-icon icon icon-tie" ] $ ""
              ""
              h5_ [ class_ "date" ] $ "23 SETPEMBER 2017"
              ""
              h3_ [ class_ "pre-title" ] $ "Save The Date"
              ""
              h1_ [ class_ "title" ] $ do
                "Jenny"
                i_ [ class_ "icon icon-heart" ] $ ""
                "Mark"
              ""
            toHtmlRaw  "<!-- slider-content-->"
            ""
          toHtmlRaw  "<!--display-table-cell-->"
          ""
        toHtmlRaw  "<!-- display-table-->"
        ""
      toHtmlRaw  "<!-- main-slider -->"
      ""
      section_ [ class_ "section story-area center-text" ] $ do
        ""
        div_ [ class_ "container" ] $ do
          ""
          div_ [ class_ "row" ] $ do
            ""
            div_ [ class_ "col-sm-1" ] $ ""
            ""
            div_ [ class_ "col-sm-10" ] $ do
              ""
              div_ [ class_ "heading" ] $ do
                ""
                h2_ [ class_ "title" ] $ "Our Story"
                ""
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "icon icon-star" ] $ ""
                ""
              ""
              p_ [ class_ "desc margin-bottom" ] $ "Every bride and groom wants an incomparable wedding combined with fantasy \r\n\t\t\t\t\tand style. We create stunning, one-of-a-kind events produced and styled to perfection. \r\n\t\t\t\t\tFrom traditional to modern, elegant and relaxed, we focus on any event we plan."
              ""
            toHtmlRaw  "<!-- col-sm-10 -->"
            ""
          toHtmlRaw  "<!-- row -->"
          ""
        toHtmlRaw  "<!-- container -->"
        ""
      toHtmlRaw  "<!-- section -->"
      ""
      section_ [ class_ "section counter-area center-text" ] $ do
        ""
        div_ [ class_ "container" ] $ do
          ""
          div_ [ class_ "row" ] $ do
            ""
            div_ [ class_ "col-sm-12" ] $ do
              ""
              div_ [ class_ "heading" ] $ do
                ""
                h2_ [ class_ "title" ] $ "Don't miss it!"
                ""
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "color-white icon icon-star" ] $ ""
                ""
              ""
            ""
            div_ [ class_ "col-sm-2" ] $ ""
            ""
            div_ [ class_ "col-sm-8" ] $ do
              ""
              div_ [ class_ "remaining-time" ] $ do
                ""
                div_ [ id_ "clock" ] $ ""
                ""
              toHtmlRaw  "<!-- remaining-time -->"
              ""
            toHtmlRaw  "<!-- col-sm-10 -->"
            ""
          toHtmlRaw  "<!-- row -->"
          ""
        toHtmlRaw  "<!-- container -->"
        ""
      toHtmlRaw  "<!-- section -->"
      ""
      section_ [ class_ "section w-details-area center-text" ] $ do
        ""
        div_ [ class_ "container" ] $ do
          ""
          div_ [ class_ "row" ] $ do
            ""
            div_ [ class_ "col-sm-1" ] $ ""
            ""
            div_ [ class_ "col-sm-10" ] $ do
              ""
              div_ [ class_ "heading" ] $ do
                ""
                h2_ [ class_ "title" ] $ "Wedding Details"
                ""
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "icon icon-star" ] $ ""
                ""
              ""
              div_ [ class_ "wedding-details margin-bottom" ] $ do
                ""
                div_ [ class_ "w-detail right" ] $ do
                  ""
                  i_ [ class_ "icon icon-ciurclke" ] $ ""
                  ""
                  h4_ [ class_ "title" ] $ "CEREMONY"
                  ""
                  p_ "Look at the most passionate ceremony ever. We wish happiness to the wedding couple."
                  ""
                toHtmlRaw  "<!-- w-detail -->"
                ""
                div_ [ class_ "w-detail left" ] $ do
                  ""
                  i_ [ class_ "icon icon-wine-glass" ] $ ""
                  ""
                  h4_ [ class_ "title" ] $ "TOAST & DINNER"
                  ""
                  p_ "Look at the most passionate ceremony ever. We wish happiness to the wedding couple."
                  ""
                toHtmlRaw  "<!-- w-detail -->"
                ""
                div_ [ class_ "w-detail right" ] $ do
                  ""
                  i_ [ class_ "icon icon-cake" ] $ ""
                  ""
                  h4_ [ class_ "title" ] $ "WEDDING CAKE"
                  ""
                  p_ "Look at the most passionate ceremony ever. We wish happiness to the wedding couple."
                  ""
                toHtmlRaw  "<!-- w-detail -->"
                ""
                div_ [ class_ "w-detail left" ] $ do
                  ""
                  i_ [ class_ "icon icon-camera" ] $ ""
                  ""
                  h4_ [ class_ "title" ] $ "PHOTOGRAPHY"
                  ""
                  p_ "Look at the most passionate ceremony ever. We wish happiness to the wedding couple."
                  ""
                toHtmlRaw  "<!-- w-detail -->"
                ""
              toHtmlRaw  "<!-- wedding-details -->"
              ""
            toHtmlRaw  "<!-- col-sm-10 -->"
            ""
          toHtmlRaw  "<!-- row -->"
          ""
        toHtmlRaw  "<!-- container -->"
        ""
      toHtmlRaw  "<!-- section -->"
      ""
      section_ [ class_ "section ceremony-area center-text" ] $ do
        ""
        div_ [ class_ "container" ] $ do
          ""
          div_ [ class_ "row" ] $ do
            ""
            div_ [ class_ "col-sm-12" ] $ do
              ""
              div_ [ class_ "heading" ] $ do
                ""
                h2_ [ class_ "title" ] $ "Wedding & Ceremonies"
                ""
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "color-white icon icon-star" ] $ ""
                ""
              ""
              div_ [ class_ "ceremony margin-bottom" ] $ do
                ""
                p_ [ class_ "desc" ] $ "We assist our clients in creating memorable, magical \r\n\t\t\t\t\t\tcelebrations that exceed expectations. Our personal approach ensures the weddings we \r\n\t\t\t\t\t\tplan are meaningful and truly reflect our clients as individuals, as couples, and states \r\n\t\t\t\t\t\tsomething about their shared values and sense of style."
                ""
                a_ [ class_ "border-btn", href_ "#" ] $ "LEARN MORE"
                ""
              ""
            toHtmlRaw  "<!-- col-sm-10 -->"
            ""
          toHtmlRaw  "<!-- row -->"
          ""
        toHtmlRaw  "<!-- container -->"
        ""
      toHtmlRaw  "<!-- section -->"
      ""
      section_ [ class_ "section galery-area center-text" ] $ do
        ""
        div_ [ class_ "container" ] $ do
          ""
          div_ [ class_ "row" ] $ do
            ""
            div_ [ class_ "col-sm-12" ] $ do
              ""
              div_ [ class_ "heading" ] $ do
                ""
                h2_ [ class_ "title" ] $ "Our Gallery"
                ""
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "icon icon-star" ] $ ""
                ""
              ""
              div_ [ class_ "image-gallery" ] $ do
                ""
                div_ [ class_ "row" ] $ do
                  ""
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    ""
                    a_ [ href_ "images/gallery-1-600x400.jpg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "images/gallery-1-600x400.jpg", alt_ "Gallery Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  ""
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    ""
                    a_ [ href_ "images/gallery-2-600x400.jpg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "images/gallery-2-600x400.jpg", alt_ "Gallery Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  ""
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    ""
                    a_ [ href_ "images/gallery-3-600x400.jpg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "images/gallery-3-600x400.jpg", alt_ "Gallery Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  ""
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    ""
                    a_ [ href_ "images/gallery-4-600x400.jpg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "images/gallery-4-600x400.jpg", alt_ "Gallery Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  ""
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    ""
                    a_ [ href_ "images/gallery-5-600x400.jpg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "images/gallery-5-600x400.jpg", alt_ "Gallery Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  ""
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    ""
                    a_ [ href_ "images/gallery-1-600x400.jpg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "images/gallery-1-600x400.jpg", alt_ "Gallery Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  ""
                toHtmlRaw  "<!-- row -->"
                ""
                a_ [ class_ "btn-2 margin-bottom gallery-btn", href_ "#" ] $ "VIEW ALL GALLERY"
                ""
              toHtmlRaw  "<!-- image-gallery -->"
              ""
            toHtmlRaw  "<!-- col-sm-10 -->"
            ""
          toHtmlRaw  "<!-- row -->"
          ""
        toHtmlRaw  "<!-- container -->"
        ""
      toHtmlRaw  "<!-- section -->"
      ""
      section_ [ class_ "contact-area" ] $ do
        ""
        div_ [ class_ "contact-wrapper section float-left" ] $ do
          ""
          div_ [ class_ "container" ] $ do
            ""
            div_ [ class_ "row" ] $ do
              ""
              div_ [ class_ "col-sm-2" ] $ ""
              ""
              div_ [ class_ "col-sm-10" ] $ do
                ""
                div_ [ class_ "heading" ] $ do
                  ""
                  h3_ [ class_ "title" ] $ "Contact Us"
                  ""
                  i_ [ class_ "icon icon-star" ] $ ""
                  ""
                ""
                div_ [ class_ "margin-bottom" ] $ do
                  ""
                  p_ "On the 25 September 2017"
                  ""
                  p_ "Join us as we celebrate life and love."
                  ""
                  h4_ $ a_ [ href_ "tel:784-412-0646", class_ "phone" ] $ "784-412-0646"
                  ""
                  p_ "14 Baria street 133/2, New York City, US"
                  ""
                toHtmlRaw  "<!-- margin-bottom -->"
                ""
              toHtmlRaw  "<!-- col-sm-10 -->"
              ""
            toHtmlRaw  "<!-- row -->"
            ""
          toHtmlRaw  "<!-- container -->"
          ""
        toHtmlRaw  "<!-- float-left -->"
        ""
        div_ [ class_ "map-area" ] $ do
          ""
          div_ [ id_ "map", style_ "height:100%;" ] $ ""
          ""
        toHtmlRaw  "<!-- map-area -->"
        ""
        script_ [ async_ "", defer_ "", src_ "https://maps.googleapis.com/maps/api/js?key=AIzaSyB-oEyU88bRR6xcbV1gI_Cahc8ugKC_JPE&callback=initMap" ] $ ""
        ""
      toHtmlRaw  "<!-- section -->"
      ""
      footer_ $ do
        ""
        div_ [ class_ "container center-text" ] $ do
          ""
          div_ [ class_ "logo-wrapper" ] $ do
            ""
            a_ [ class_ "logo", href_ "#" ] $ img_ [ src_ "images/logo-black.png", alt_ "Logo Image" ]
            ""
            i_ [ class_ "icon icon-star" ] $ ""
            ""
          ""
          div_ [ class_ "newsletter" ] $ do
            ""
            h4_ [ class_ "title" ] $ "RECEIVE NEWS IN YOUR EMAIL"
            ""
            p_ "Join our mailing list to receive news and announcements"
            ""
            div_ [ class_ "email-area" ] $ do
              ""
              form_ $ do
                ""
                input_ [ class_ "email-input", type_ "text", placeholder_ "Your Email" ]
                ""
                button_ [ class_ "submit-btn", type_ "submit" ] $ i_ [ class_ "icon icon-email-plane" ] $ ""
                ""
              ""
            toHtmlRaw  "<!-- email-area -->"
            ""
          toHtmlRaw  "<!-- newsletter -->"
          ""
          ul_ [ class_ "social-icons" ] $ do
            ""
            li_ $ a_ [ href_ "#" ] $ i_ [ class_ "icon icon-heart" ] $ ""
            ""
            li_ $ a_ [ href_ "#" ] $ i_ [ class_ "icon icon-twitter" ] $ ""
            ""
            li_ $ a_ [ href_ "#" ] $ i_ [ class_ "icon icon-instagram" ] $ ""
            ""
            li_ $ a_ [ href_ "#" ] $ i_ [ class_ "icon icon-pinterest" ] $ ""
            ""
            li_ $ a_ [ href_ "#" ] $ i_ [ class_ "icon icon-tripadvisor" ] $ ""
            ""
          ""
          ul_ [ class_ "footer-links" ] $ do
            ""
            li_ $ a_ [ href_ "#" ] $ "HOME"
            ""
            li_ $ a_ [ href_ "#" ] $ "OUR STORIES"
            ""
            li_ $ a_ [ href_ "#" ] $ "THE WEDDING"
            ""
            li_ $ a_ [ href_ "#" ] $ "GALLERY"
            ""
            li_ $ a_ [ href_ "#" ] $ "CONTACT"
            ""
          ""
          p_ [ class_ "copyright" ] $ do
            toHtmlRaw  "<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->"
            "Copyright \169"
            script_ "document.write(new Date().getFullYear());"
            "All rights reserved | This template is made with"
            i_ [ class_ "icon-heart", ariaHidden_ "true" ] $ ""
            "by"
            a_ [ href_ "https://colorlib.com", target_ "_blank" ] $ "Colorlib"
            ""
            toHtmlRaw  "<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->"
          ""
        toHtmlRaw  "<!-- container -->"
        ""
      ""
      toHtmlRaw  "<!-- SCIPTS -->"
      ""
      script_ [ src_ "common-js/jquery-3.1.1.min.js" ] $ ""
      ""
      script_ [ src_ "common-js/tether.min.js" ] $ ""
      ""
      script_ [ src_ "common-js/bootstrap.js" ] $ ""
      ""
      script_ [ src_ "common-js/jquery.countdown.min.js" ] $ ""
      ""
      script_ [ src_ "common-js/jquery.fluidbox.min.js" ] $ ""
      ""
      script_ [ src_ "common-js/scripts.js" ] $ ""
      ""
    ""

