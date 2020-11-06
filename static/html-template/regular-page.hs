{-# LANGUAGE OverloadedStrings, ExtendedDefaultRules #-}

import Lucid
import Lucid.Supplemental
import System.IO (stdout, hSetEncoding, utf8)
import Data.Text.Lazy.IO as L

main :: IO ()
main = do
  hSetEncoding stdout utf8
  L.hPutStr stdout (renderText template1)


-- Template for file: 03-regular-page.html
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
      link_ [ href_ "common-css/font-icon.css", rel_ "stylesheet" ]
      ""
      link_ [ href_ "03-regular-page/css/styles.css", rel_ "stylesheet" ]
      ""
      link_ [ href_ "03-regular-page/css/responsive.css", rel_ "stylesheet" ]
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
              h1_ [ class_ "title" ] $ "Regular Page"
              ""
              a_ [ href_ "01-homepage.html" ] $ do
                i_ [ class_ "icon icon-home" ] $ ""
                "Home"
              ""
              a_ [ href_ "01-homepage.html" ] $ do
                i_ [ class_ "icon icon-right-open-big" ] $ ""
                "Archive"
              ""
              a_ [ href_ "#" ] $ do
                i_ [ class_ "icon icon-right-open-big" ] $ ""
                "Regular Page"
              ""
            toHtmlRaw  "<!-- slider-content-->"
            ""
          toHtmlRaw  "<!--display-table-cell-->"
          ""
        toHtmlRaw  "<!-- display-table-->"
        ""
      toHtmlRaw  "<!-- main-slider -->"
      ""
      section_ [ class_ "regular-area" ] $ do
        ""
        div_ [ class_ "container" ] $ do
          ""
          div_ [ class_ "row" ] $ do
            ""
            div_ [ class_ "col-sm-12" ] $ do
              ""
              div_ [ class_ "content" ] $ do
                ""
                div_ [ class_ "img-wrapper" ] $ img_ [ src_ "images/regular-content-1-1000x650.jpg", alt_ "Content Image" ]
                ""
                h2_ [ class_ "margin-top-btm" ] $ "Planning Honeymoon Trip"
                ""
                p_ [ class_ "margin-top-btm" ] $ "Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \r\n\t\t\t\t\t\tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea. Liusmod tempor \r\n\t\t\t\t\t\tincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, qui s nostrud \r\n\t\t\t\t\t\texercitation ullamLorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem \r\n\t\t\t\t\t\tipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt \r\n\t\t\t\t\t\tut labore et dolore magna aliqua. Duis aute irure Lorem ipsum dolor sit amet, \r\n\t\t\t\t\t\tconsectetur adipisicing elit, sed do eiusmod tempor incididunt ut\r\n\t\t\t\t\t\tlabore et dolore magna aliqua. Tiusmod tempor incididunt ut labore et dolore magna \r\n\t\t\t\t\t\taliqua. Ut enim ad minim veniam."
                ""
                h4_ [ class_ "margin-top-btm" ] $ "Shooting Flowers and Bouquets"
                ""
                p_ [ class_ "margin-top-btm" ] $ "Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \r\n\t\t\t\t\t\tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea. Liusmod tempor incididunt \r\n\t\t\t\t\t\tut labore et dolore magna aliqua. Ut enim ad minim veniam, qui s nostrud exercitation \r\n\t\t\t\t\t\tullamLorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet,\r\n\t\t\t\t\t\tconsectetur adipisicing elit."
                ""
                div_ [ class_ "quoto-area margin-top-btm" ] $ do
                  ""
                  h3_ [ class_ "quoto" ] $ do
                    i_ [ class_ "icon icon-quote" ] $ ""
                    "\8220Love recognizes no barriers. It jumps hurdles, leaps fences, penetrates walls to \r\n\t\t\t\t\t\t\tarrive at its destination full of hope.\8221"
                  ""
                  h5_ [ class_ "name" ] $ "Maya Angeluo"
                  ""
                ""
                div_ [ class_ "row" ] $ do
                  ""
                  div_ [ class_ "col-sm-6" ] $ do
                    ""
                    div_ [ class_ "img-wrapper" ] $ img_ [ src_ "images/regular-content-2-600x400.jpg", alt_ "Content Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-6 -->"
                  ""
                  div_ [ class_ "col-sm-6" ] $ do
                    ""
                    div_ [ class_ "img-wrapper" ] $ img_ [ src_ "images/regular-content-3-600x400.jpg", alt_ "Content Image" ]
                    ""
                  toHtmlRaw  "<!-- col-sm-6 -->"
                  ""
                toHtmlRaw  "<!-- row -->"
                ""
                h4_ [ class_ "margin-top-btm" ] $ "Quick Note About the Gifts"
                ""
                p_ [ class_ "desc" ] $ "Tiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \r\n\t\t\t\t\t\tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea. Liusmod tempor incididunt \r\n\t\t\t\t\t\tut labore et dolore magna aliqua. Ut enim ad minim veniam, qui s nostrud exercitation \r\n\t\t\t\t\t\tullamLorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet,\r\n\t\t\t\t\t\tconsectetur adipisicing elit."
                ""
                div_ [ class_ "img-wrapper" ] $ img_ [ src_ "images/regular-content-4-1000x650.jpg", alt_ "Content Image" ]
                ""
                h4_ [ class_ "margin-top-btm" ] $ "Quick Note About the Gifts"
                ""
                ul_ [ class_ "braidmaids-name" ] $ do
                  ""
                  li_ "Braidsmaids: Tricia Brandy (Maid of Honor)"
                  ""
                  li_ "Mandy Castro"
                  ""
                  li_ "Daniel Dulon"
                  ""
                  li_ "Megan Hines"
                  ""
                  li_ "Katie Johnson"
                  ""
                  li_ "Katie Lugan"
                  ""
                ""
              toHtmlRaw  "<!-- content -->"
              ""
            toHtmlRaw  "<!-- col-sm-12 -->"
            ""
          toHtmlRaw  "<!-- row -->"
          ""
        toHtmlRaw  "<!-- container -->"
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
      script_ [ src_ "common-js/scripts.js" ] $ ""
      ""
    ""

