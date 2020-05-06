{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Devrep.Docs.Capture where

-- servant
import Servant

-- servant-docs
import Servant.Docs

-- text
import Data.Text

instance ToCapture (Capture "username" Text) where
  toCapture _ =
    DocCapture "username" "(string) username of the requested user"
