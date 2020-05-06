module Devrep.Application where

-- base
import Data.Proxy

-- servant
import Servant

import Devrep.API
import Devrep.Server

app :: Application
app = serve (Proxy :: Proxy DevrepAPI) server
