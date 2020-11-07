{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE NoImplicitPrelude    #-}
{-# LANGUAGE OverloadedStrings    #-}
{-# LANGUAGE ScopedTypeVariables  #-}

module LucidTemplates.HomeTemplate where

import           Blaze.ByteString.Builder           (Builder)
import qualified Blaze.ByteString.Builder           as Blaze
import qualified Blaze.ByteString.Builder.Html.Utf8 as Blaze
import           Data.Text.Lazy.IO                  as L
import           Database.Persist.Sql               (fromSqlKey)
import           Import                             hiding (Builder, Html, for_,
                                                     toHtml, (==.))
import           Lucid
import qualified Lucid.Base                         as LucidBase
import           Lucid.Supplemental
import           System.IO                          (hSetEncoding, stdout, utf8)

homePage :: Html ()
homePage = do
  doctype_
  html_ [ lang_ "en" ] $ do
    head_ $ do
      meta_ [ httpEquiv_ "X-UA-Compatible", content_ "IE=edge" ]
      meta_ [ name_ "viewport", content_ "width=device-width, initial-scale=1" ]
      meta_ [ charset_ "UTF-8" ]
      toHtmlRaw  "<!-- Font -->"
      link_ [ href_ "https://fonts.googleapis.com/css?family=Playball%7CBitter", rel_ "stylesheet" ]
      toHtmlRaw  "<!-- Stylesheets -->"
      link_ [ href_ "static/html-template/common-css/bootstrap.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/common-css/fluidbox.min.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/common-css/font-icon.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/01-homepage/css/styles.css", rel_ "stylesheet" ]
      link_ [ href_ "static/html-template/01-homepage/css/responsive.css", rel_ "stylesheet" ]
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
              i_ [ class_ "small-icon icon icon-tie" ] $ ""
              h5_ [ class_ "date" ] $ "21 de noviembre de 2020"
              h3_ [ class_ "pre-title" ] $ "¡Te esperamos!"
              h1_ [ class_ "title" ] $ do
                "Laura "
                i_ [ class_ "icon icon-heart" ] $ ""
                " Daniel"
            toHtmlRaw  "<!-- slider-content-->"
          toHtmlRaw  "<!--display-table-cell-->"
        toHtmlRaw  "<!-- display-table-->"
      toHtmlRaw  "<!-- main-slider -->"
      section_ [ class_ "section story-area center-text" ] $ do
        div_ [ class_ "container" ] $ do
          div_ [ class_ "row" ] $ do
            div_ [ class_ "col-sm-1" ] $ ""
            div_ [ class_ "col-sm-10" ] $ do
              div_ [ class_ "heading" ] $ do
                h2_ [ class_ "title" ] $ "Acompáñanos"
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "icon icon-star" ] $ ""
              p_ [ class_ "desc margin-bottom" ] $ "Debido a la situación mundial causada por la pandemia COVID-19, la compañía de nuestros invitados será mayoritariamente virtual. Concédanos el honor de acompañarnos desde la distancia en este momento tan importante para nosotros. La ceremonia y el banquete serán transmitidos en línea por Zoom y Google Meet."
            toHtmlRaw  "<!-- col-sm-10 -->"
          toHtmlRaw  "<!-- row -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- section -->"
      section_ [ class_ "section counter-area center-text" ] $ do
        div_ [ class_ "container" ] $ do
          div_ [ class_ "row" ] $ do
            div_ [ class_ "col-sm-12" ] $ do
              div_ [ class_ "heading" ] $ do
                h2_ [ class_ "title" ] $ "¡Falta poco!"
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "color-white icon icon-star" ] $ ""
            div_ [ class_ "col-sm-2" ] $ ""
            div_ [ class_ "col-sm-8" ] $ do
              div_ [ class_ "remaining-time" ] $ do
                div_ [ id_ "clock" ] $ ""
              toHtmlRaw  "<!-- remaining-time -->"
            toHtmlRaw  "<!-- col-sm-10 -->"
          toHtmlRaw  "<!-- row -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- section -->"
      section_ [ class_ "section w-details-area center-text" ] $ do
        div_ [ class_ "container" ] $ do
          div_ [ class_ "row" ] $ do
            div_ [ class_ "col-sm-1" ] $ ""
            div_ [ class_ "col-sm-10" ] $ do
              div_ [ class_ "heading" ] $ do
                h2_ [ id_ "programa", class_ "title" ] $ "Programa"
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "icon icon-star" ] $ ""
              div_ [ class_ "wedding-details margin-bottom" ] $ do
                div_ [ class_ "w-detail right" ] $ do
                  i_ [ class_ "icon icon-ciurclke" ] $ ""
                  h4_ [ class_ "title" ] $ "17:00 - 18:00  Ceremonia Religiosa"
                  p_ "Templo de Santa Rosa de Viterbo"
                  a_ [ href_ "/" ] $ p_ [] $ "Da click aquí para unirte virtualmente (habilitado el día de la boda)"
                toHtmlRaw  "<!-- w-detail -->"
                div_ [ class_ "w-detail left" ] $ do
                  i_ [ class_ "icon icon-wine-glass" ] $ ""
                  h4_ [ class_ "title" ] $ "18:30 - 19:30 Coctel de Bienvenida"
                  a_ [ href_ "/" ] $ p_ "Da click aquí para unirte virtualmente (habilitado el día de la boda)"
                toHtmlRaw  "<!-- w-detail -->"
                div_ [ class_ "w-detail right" ] $ do
                  i_ [ class_ "icon icon-heart" ] $ ""
                  -- i_ [ class_ "icon icon-camera" ] $ ""
                  h4_ [ class_ "title" ] $ "19:30 - 20:00 Ceremonia Civil"
                  a_ [ href_ "/" ] $ p_ "Da click aquí para unirte virtualmente (habilitado el día de la boda)"
                toHtmlRaw  "<!-- w-detail -->"
                div_ [ class_ "w-detail left" ] $ do
                  i_ [ class_ "icon icon-cake" ] $ ""
                  h4_ [ class_ "title" ] $ "20:00 - ? Banquete y Fiesta"
                  a_ [ href_ "/" ] $ p_ "Da click aquí para unirte virtualmente (habilitado el día de la boda)"
                toHtmlRaw  "<!-- w-detail -->"
              toHtmlRaw  "<!-- wedding-details -->"
            toHtmlRaw  "<!-- col-sm-10 -->"
          toHtmlRaw  "<!-- row -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- section -->"
      section_ [ class_ "section ceremony-area center-text" ] $ do
        div_ [ class_ "container" ] $ do
          div_ [ class_ "row" ] $ do
            div_ [ class_ "col-sm-12" ] $ do
              div_ [ class_ "heading" ] $ do
                h2_ [ class_ "title" ] $ "Conexión Virtual"
                span_ [ class_ "heading-bottom" ] $ i_ [ class_ "color-white icon icon-star" ] $ ""
              div_ [ class_ "ceremony margin-bottom" ] $ do
                p_ [ class_ "desc" ] $ "El 21 de noviembre, en esta sección de la página web, podrás encontrar los enlaces para dar click y así acompañarnos vía Zoom o Google Meet."
                -- a_ [ class_ "border-btn", href_ "#" ] $ "Link Zoom"
                -- a_ [ class_ "border-btn", href_ "#" ] $ "Link Google Meet"
            toHtmlRaw  "<!-- col-sm-10 -->"
          toHtmlRaw  "<!-- row -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- section -->"
      section_ [ class_ "section galery-area center-text" ] $ do
        div_ [ class_ "container" ] $ do
          div_ [ class_ "row" ] $ do
            div_ [ class_ "col-sm-12" ] $ do
              div_ [ class_ "heading" ] $ do
                h2_ [ class_ "title" ] $ "Nuestra Galería"
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
                  toHtmlRaw  "<!-- col-sm-4 -->"
                toHtmlRaw  "<!-- row -->"
                p_ $ a_ [ class_ "btn-2 margin-bottom gallery-btn", href_ "/galeria" ] $ "VER TODA LA GALERÍA"
                p_ $ a_ [ class_ "btn-2 margin-bottom gallery-btn", href_ "/mesa-de-regalos" ] $ "IR A MESA DE REGALOS"
              toHtmlRaw  "<!-- image-gallery -->"
            toHtmlRaw  "<!-- col-sm-10 -->"
          toHtmlRaw  "<!-- row -->"
        toHtmlRaw  "<!-- container -->"
      toHtmlRaw  "<!-- section -->"
      section_ [ class_ "contact-area" ] $ do
        div_ [ class_ "contact-wrapper section float-left" ] $ do
          div_ [ class_ "container" ] $ do
            div_ [ class_ "row" ] $ do
              div_ [ class_ "col-sm-2" ] $ ""
              div_ [ class_ "col-sm-10" ] $ do
                div_ [ class_ "heading" ] $ do
                  h3_ [ id_ "direcciones", class_ "title" ] $ "Direcciones"
                  i_ [ class_ "icon icon-star" ] $ ""
                div_ [ class_ "margin-bottom" ] $ do
                  h4_ $ "Templo Santa Rosa de Viterbo"
                  p_ $ span_ [ style_ "padding-left:20px" ] $ "José María Arteaga 89, Centro, 76000 Santiago de Querétaro, Qro."
                  p_ $ span_ [ style_ "padding-left:20px" ] $ a_ [ href_ "https://goo.gl/maps/x6PNMfwvwytxnyP87" ] $ "Link Mapa Google"
                  br_ []
                  h4_ $ "Ceremonia Civíl y Banquete"
                  p_ $ span_ [ style_ "padding-left:20px" ] $ "Paseo Jurica 655, Jurica, 76100 Santiago de Querétaro, Qro."
                  p_ $ span_ [ style_ "padding-left:20px" ] $ a_ [ href_ "https://goo.gl/maps/52Afrsm63b1RoBbv5" ] $ "Link Mapa Google"
                toHtmlRaw  "<!-- margin-bottom -->"
              toHtmlRaw  "<!-- col-sm-10 -->"
            toHtmlRaw  "<!-- row -->"
          toHtmlRaw  "<!-- container -->"
        toHtmlRaw  "<!-- float-left -->"
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
      script_ [ src_ "static/html-template/common-js/jquery-3.1.1.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/tether.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/bootstrap.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/jquery.countdown.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/jquery.fluidbox.min.js" ] $ ""
      script_ [ src_ "static/html-template/common-js/scripts.js" ] $ ""

