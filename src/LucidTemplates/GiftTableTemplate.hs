{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE OverloadedStrings    #-}

module LucidTemplates.GiftTableTemplate where

import           Data.Text.Lazy.IO  as L
import           Lucid
import           Lucid.Supplemental
import           System.IO          (hSetEncoding, stdout, utf8)

-- Template for file: 03-regular-page.html
giftTablePage :: Html ()
giftTablePage = do
  doctype_
  html_ [ lang_ "en" ] $ do
    head_ $ do
      title_ "TITLE"
      meta_ [ httpEquiv_ "X-UA-Compatible", content_ "IE=edge" ]
      meta_ [ name_ "viewport", content_ "width=device-width, initial-scale=1" ]
      meta_ [ charset_ "UTF-8" ]
      toHtmlRaw  "<!-- Font -->"
      link_ [ href_ "https://fonts.googleapis.com/css?family=Playball%7CBitter", rel_ "stylesheet" ]
      toHtmlRaw  "<!-- Stylesheets -->"
      link_ [ href_ "static/html-template/common-css/bootstrap.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/common-css/fluidbox.min.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/common-css/font-icon.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/03-regular-page/css/styles.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/03-regular-page/css/responsive.css", rel_ "stylesheet" ]
    body_ $ do
      header_ $ do
        div_ [ class_ "container" ] $ do
          -- a_ [ class_ "logo", href_ "#" ] $ img_ [ src_ "static/html-template/images/logo-white.png", alt_ "Logo" ]
          -- h3_ [ class_ "pre-title", style_ "margin-top: 0.0em; margin-bottom: 0.0em;" ] $ "¡Te esperamos!"
          a_ [ class_ "logo", href_ "/" ] $ img_ [ src_ "static/html-template/images/my-pictures/nuestra-boda.png", alt_ "Logo" ]
          div_ [ class_ "menu-nav-icon", data_ "nav-menu" "#main-menu" ] $ i_ [ class_ "icon icon-bars" ] $ ""
          ul_ [ class_ "main-menu visible-on-click", id_ "main-menu" ] $ do
            li_ $ a_ [ href_ "/" ] $ "INICIO"
            li_ $ a_ [ href_ "/#programa" ] $ "PROGRAMA"
            li_ $ a_ [ href_ "/#direcciones" ] $ "DIRECCIONES"
            li_ $ a_ [ href_ "/mesa-de-regalos" ] $ "MESA DE REGALOS"
            li_ $ a_ [ href_ "/galeria" ] $ "GALERÍA"
          toHtmlRaw  "<!-- main-menu -->"
        toHtmlRaw  "<!-- container -->"
      div_ [ class_ "main-slider" ] $ do
        div_ [ class_ "display-table center-text" ] $ do
          div_ [ class_ "display-table-cell" ] $ do
            div_ [ class_ "slider-content" ] $ do
              h1_ [ class_ "title" ] $ "Mesa de Regalos"
              br_ []
              br_ []
              h4_  [ class_ "title" ] $  "Ya tenemos pensado el Ferrarri, la mansión y el velero. Ahora lo único que nos falta es el dinero..."
            toHtmlRaw  "<!-- slider-content-->"
          toHtmlRaw  "<!--display-table-cell-->"
        toHtmlRaw  "<!-- display-table-->"
      toHtmlRaw  "<!-- main-slider -->"
      section_ [ class_ "section galery-area center-text" ] $ do
        div_ [ class_ "container" ] $ do
          div_ [ class_ "row" ] $ do
            div_ [ style_ "text-align:left;", class_ "col-sm-12" ] $ do
              h4_ "¿El mejor regalo?"
              span_ [ style_ "padding-left:20px" ] $ h4_ "¡Nuestra luna de miel!"
              p_ "Banco: Bancomer"
              p_ "Número de cuenta: 154 118 4830"
              p_ "CLABE: 0126 8001 5411 848306"
              p_ "Nombre: LAURA RODRIGUEZ MANDUJANO"

              br_ []

              h4_ "Si deseas obsequiarnos algún detalle para nuestro nuevo hogar, puedes hacerlo de dos formas:"
              p_ $ b_ $ a_ [ href_ "https://mesaderegalos.liverpool.com.mx/milistaderegalos/50453894" ] $ "- Liverpool (Número de evento: 50453894)"
              p_ $ b_ $ a_ [ href_ "https://www.amazon.com.mx/wedding/share/DAHRYLRM" ] $ "- Amazon"

              -- "Su compañía es lo más importante en este día tan especial, pero si algo nos quieren regalar, en efectivo lo sabremos apreciar..."
              -- -- div_ [ class_ "heading" ] $ do
              -- --   h2_ [ class_ "title" ] $ "Nuestra Galería"
              -- div_ [ class_ "image-gallery" ] $ do
              --   div_ [ class_ "row" ] $ do
              --     div_ [ class_ "col-md-4 col-sm-6" ] $ do
              --     toHtmlRaw  "<!-- col-sm-4 -->"
              --   toHtmlRaw  "<!-- row -->"
              toHtmlRaw  "<!-- image-gallery -->"
            toHtmlRaw  "<!-- col-sm-10 -->"
          toHtmlRaw  "<!-- row -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- section -->"
      footer_ $ do
        div_ [ class_ "container center-text" ] $ do
          p_ [ class_ "copyright" ] $ do
            toHtmlRaw  "<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->"
            "HTML template by "
            a_ [ href_ "https://colorlib.com", target_ "_blank" ] $ i_ [ class_ "icon-heart", ariaHidden_ "true" ] $ " Colorlib"
            " | Backend powered by "
            a_ [ href_ "https://www.yesodweb.com", target_ "_blank" ] $ "Yesod"
            " + "
            a_ [ href_ "https://nixos.org/manual/nix/stable/", target_ "_blank" ] $ "Nix"
            " | Put together with love by "
            a_ [ href_ "https://github.com/hhefesto/nuptialem", target_ "_blank" ] $ "hhefesto "
            a_ [ href_ "https://github.com/hhefesto/nuptialem" ] $ img_ [ style_ "padding-left: 10px;" , src_ "static/GitHub-Mark-32px.png" ]
            toHtmlRaw  "<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- SCIPTS -->"
      script_ [ src_ "static/html-template/common-js/jquery-3.1.1.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/tether.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/bootstrap.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/jquery.fluidbox.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/scripts.js" ] $ ""
