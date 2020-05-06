{-# LANGUAGE OverloadedStrings #-}

module Devrep.Handler where

-- text
import Data.Text

-- servant
import Servant

import Devrep.UserReputation

userReputationHandler :: Text -> Handler UserReputation
userReputationHandler _ = pure $ UserReputation "marco" "perone"
