-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}

-- | Contains the default configuration
module OpenAI.Configuration where

import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified GHC.Types 
import qualified OpenAI.Common

-- | The default url specified by the OpenAPI specification
-- 
-- @https://api.openai.com/v1@
defaultURL = Data.Text.Internal.pack "https://api.openai.com/v1"
-- | The default application name used in the @User-Agent@ header which is based on the @info.title@ field of the specification
-- 
-- @OpenAI API@
defaultApplicationName = Data.Text.Internal.pack "OpenAI API"
-- | The default configuration containing the 'defaultURL' and no authorization
defaultConfiguration = OpenAI.Common.Configuration defaultURL OpenAI.Common.anonymousSecurityScheme GHC.Types.True defaultApplicationName
