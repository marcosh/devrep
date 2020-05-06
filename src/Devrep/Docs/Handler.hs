{-# LANGUAGE OverloadedStrings #-}

module Devrep.Docs.Handler where

-- base
import Data.Proxy

-- bytestring
import Data.ByteString.Lazy (ByteString)

-- http-types
import Network.HTTP.Types

-- servant
import Servant

-- servant-docs
import Servant.Docs

-- text
import Data.Text.Lazy.Encoding (encodeUtf8)
import Data.Text.Lazy (pack)

-- wai
import Network.Wai

import Devrep.API
import Devrep.Docs.Capture()
import Devrep.Docs.Sample()

docsBS :: ByteString
docsBS = encodeUtf8
       . pack
       . markdown
       $ docsWithIntros [intro] (Proxy :: Proxy DevrepAPI)

  where intro = DocIntro "Welcome" ["Documentation of the Devrep API's"]


docsHandler :: Tagged Handler Application
docsHandler = Tagged serveDocs where
  serveDocs _ respond = respond $ responseLBS ok200 [plain] docsBS
  plain = ("Content-Type", "text/plain")
