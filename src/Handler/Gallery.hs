{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Handler.Gallery where

import           Import
import           Lucid                          hiding (Html, toHtml)
import           LucidTemplates.GalleryTemplate
import           Text.Blaze.Html

getGalleryR :: Handler Html
getGalleryR = do
  defaultLayout $ do
    setTitle "L∧D"
    toWidget . preEscapedToHtml . renderText $ galleryPage
