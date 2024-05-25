-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ModifyRunRequest
module OpenAI.Types.ModifyRunRequest where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified OpenAI.Common
import OpenAI.TypeAlias

-- | Defines the object schema located at @components.schemas.ModifyRunRequest@ in the specification.
-- 
-- 
data ModifyRunRequest = ModifyRunRequest {
  -- | metadata: Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.
  modifyRunRequestMetadata :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable Data.Aeson.Types.Internal.Object))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ModifyRunRequest
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (modifyRunRequestMetadata obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (modifyRunRequestMetadata obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ModifyRunRequest
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ModifyRunRequest" (\obj -> GHC.Base.pure ModifyRunRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))}
-- | Create a new 'ModifyRunRequest' with all required fields.
mkModifyRunRequest :: ModifyRunRequest
mkModifyRunRequest = ModifyRunRequest{modifyRunRequestMetadata = GHC.Maybe.Nothing}
