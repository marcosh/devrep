{-# LANGUAGE TypeOperators #-}

module Devrep.Server where

-- servant-server
import Servant

import Devrep.API
import Devrep.Docs.API
import Devrep.Docs.Handler
import Devrep.Handler

type API = DevrepAPI :<|> DocsAPI

server :: Server API
server
  = userReputationHandler
  :<|> docsHandler
