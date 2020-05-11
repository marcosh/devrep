module Devrep.Application where

-- base
import Data.Proxy

-- servant
import Servant

-- wai-extra
import Network.Wai.Middleware.RequestLogger

import Devrep.Server

app :: Application
app = logStdoutDev $ serve (Proxy :: Proxy API) server
