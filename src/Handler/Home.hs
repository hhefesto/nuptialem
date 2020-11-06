{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Handler.Home where

import           Import
import           Lucid                       hiding (Html, toHtml)
import           LucidTemplates.HomeTemplate
import           Text.Blaze.Html

getHomeR :: Handler Html
getHomeR = do
  defaultLayout $ do
    setTitle "L∧D"
    toWidget . preEscapedToHtml . renderText $ homePage
