{-# LANGUAGE OverloadedStrings    #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Devrep.Docs.Sample where

-- servant-docs
import Servant.Docs

import Devrep.UserReputation

instance ToSample UserReputation where
  toSamples _ = singleSample $ UserReputation "marco" "perone"
