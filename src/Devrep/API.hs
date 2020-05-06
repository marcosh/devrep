{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

module Devrep.API where

-- servant-server
import Servant.API

-- text
import Data.Text

import Devrep.UserReputation

type DevrepAPI = "user" :> Capture "username" Text :> Get '[JSON] UserReputation
