{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Handler.GiftTable where

import           Import
import           Lucid                            hiding (Html, toHtml)
import           LucidTemplates.GiftTableTemplate
import           Text.Blaze.Html

getGiftTableR :: Handler Html
getGiftTableR = do
  defaultLayout $ do
    setTitle "L∧D"
    toWidget . preEscapedToHtml . renderText $ giftTablePage
