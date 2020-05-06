{-# LANGUAGE OverloadedStrings #-}

module Devrep.Server where

-- servant-server
import Servant

import Devrep.API
import Devrep.UserReputation

server :: Server DevrepAPI
server _ = pure $ UserReputation "marco" "perone"
