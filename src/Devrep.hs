module Devrep where

-- warp
import Network.Wai.Handler.Warp

import Devrep.Application

devrepServer :: IO ()
devrepServer = run 8081 app
