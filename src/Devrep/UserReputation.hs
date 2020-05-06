{-# LANGUAGE DeriveGeneric #-}

module Devrep.UserReputation where

-- aeson
import Data.Aeson

-- base
import GHC.Generics

-- text
import Data.Text

data UserReputation = UserReputation
  { _name :: Text
  , _surname :: Text
  }
  deriving (Eq, Show, Generic)

instance ToJSON UserReputation
