{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE OverloadedStrings    #-}

module LucidTemplates.GalleryTemplate where

import           Data.Text.Lazy.IO  as L
import           Lucid
import           Lucid.Supplemental
import           System.IO          (hSetEncoding, stdout, utf8)


-- Template for file: 03-regular-page.html
galleryPage :: Html ()
galleryPage = do
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
              h1_ [ class_ "title" ] $ "Galería"
              br_ []
              h4_  [ class_ "title" ] $  "¡Asegúrate de regresar aquí después de la boda para ver todas las fotos!"
            toHtmlRaw  "<!-- slider-content-->"
          toHtmlRaw  "<!--display-table-cell-->"
        toHtmlRaw  "<!-- display-table-->"
      toHtmlRaw  "<!-- main-slider -->"
      section_ [ class_ "section galery-area center-text" ] $ do
        div_ [ class_ "container" ] $ do
          div_ [ class_ "row" ] $ do
            div_ [ class_ "col-sm-12" ] $ do
              -- div_ [ class_ "heading" ] $ do
              --   h2_ [ class_ "title" ] $ "Nuestra Galería"
              div_ [ class_ "image-gallery" ] $ do
                div_ [ class_ "row" ] $ do
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria1.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria1.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria2.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria2.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria3.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria3-1.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria4.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria4.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria5.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria5.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria6.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria6-1.jpeg", alt_ "imagen de galería" ]
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria7.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria7.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria23.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria23-1.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria9.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria9.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria10.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria10.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria11.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria11.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria12.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria12.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria16.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria16.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria14.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria14.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria19.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria19.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria13.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria13.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria20.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria20.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                  div_ [ class_ "col-md-4 col-sm-6" ] $ do
                    a_ [ href_ "static/html-template/images/my-pictures/galeria/galeria21.jpeg", data_ "fluidbox" "" ] $ img_ [ class_ "margin-bottom", src_ "static/html-template/images/my-pictures/galeria/galeria21.jpeg", alt_ "imagen de galería" ]
                  toHtmlRaw  "<!-- col-sm-4 -->"
                toHtmlRaw  "<!-- row -->"
              toHtmlRaw  "<!-- image-gallery -->"
            toHtmlRaw  "<!-- col-sm-10 -->"
          toHtmlRaw  "<!-- row -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- section -->"
      footer_ $ do
        div_ [ class_ "container center-text" ] $ do
          p_ [ class_ "copyright" ] $ do
            toHtmlRaw  "<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->"
            "Copyright \169"
            script_ "document.write(new Date().getFullYear());"
            "All rights reserved | This template is made with"
            i_ [ class_ "icon-heart", ariaHidden_ "true" ] $ ""
            "by"
            a_ [ href_ "https://colorlib.com", target_ "_blank" ] $ "Colorlib"
            toHtmlRaw  "<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- SCIPTS -->"
      script_ [ src_ "static/html-template/common-js/jquery-3.1.1.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/tether.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/bootstrap.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/jquery.fluidbox.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/scripts.js" ] $ ""
