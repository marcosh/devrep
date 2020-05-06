{-# LANGUAGE OverloadedStrings #-}

module Devrep.Server where

-- servant-server
import Servant

-- text
import Data.Text

import Devrep.API
import Devrep.UserReputation

server :: Server DevrepAPI
server = userReputationHandler

userReputationHandler :: Text -> Handler UserReputation
userReputationHandler _ = pure $ UserReputation "marco" "perone"
