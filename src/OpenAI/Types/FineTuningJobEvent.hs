-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FineTuningJobEvent
module OpenAI.Types.FineTuningJobEvent where

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

-- | Defines the object schema located at @components.schemas.FineTuningJobEvent@ in the specification.
-- 
-- Fine-tuning job event object
data FineTuningJobEvent = FineTuningJobEvent {
  -- | created_at
  fineTuningJobEventCreatedAt :: GHC.Types.Int
  -- | id
  , fineTuningJobEventId :: Data.Text.Internal.Text
  -- | level
  , fineTuningJobEventLevel :: FineTuningJobEventLevel'
  -- | message
  , fineTuningJobEventMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FineTuningJobEvent
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created_at" Data.Aeson.Types.ToJSON..= fineTuningJobEventCreatedAt obj] : ["id" Data.Aeson.Types.ToJSON..= fineTuningJobEventId obj] : ["level" Data.Aeson.Types.ToJSON..= fineTuningJobEventLevel obj] : ["message" Data.Aeson.Types.ToJSON..= fineTuningJobEventMessage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fine_tuning.job.event"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created_at" Data.Aeson.Types.ToJSON..= fineTuningJobEventCreatedAt obj] : ["id" Data.Aeson.Types.ToJSON..= fineTuningJobEventId obj] : ["level" Data.Aeson.Types.ToJSON..= fineTuningJobEventLevel obj] : ["message" Data.Aeson.Types.ToJSON..= fineTuningJobEventMessage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fine_tuning.job.event"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON FineTuningJobEvent
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "FineTuningJobEvent" (\obj -> (((GHC.Base.pure FineTuningJobEvent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "level")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))}
-- | Create a new 'FineTuningJobEvent' with all required fields.
mkFineTuningJobEvent :: GHC.Types.Int -- ^ 'fineTuningJobEventCreatedAt'
  -> Data.Text.Internal.Text -- ^ 'fineTuningJobEventId'
  -> FineTuningJobEventLevel' -- ^ 'fineTuningJobEventLevel'
  -> Data.Text.Internal.Text -- ^ 'fineTuningJobEventMessage'
  -> FineTuningJobEvent
mkFineTuningJobEvent fineTuningJobEventCreatedAt fineTuningJobEventId fineTuningJobEventLevel fineTuningJobEventMessage = FineTuningJobEvent{fineTuningJobEventCreatedAt = fineTuningJobEventCreatedAt,
                                                                                                                                             fineTuningJobEventId = fineTuningJobEventId,
                                                                                                                                             fineTuningJobEventLevel = fineTuningJobEventLevel,
                                                                                                                                             fineTuningJobEventMessage = fineTuningJobEventMessage}
-- | Defines the enum schema located at @components.schemas.FineTuningJobEvent.properties.level@ in the specification.
-- 
-- 
data FineTuningJobEventLevel' =
   FineTuningJobEventLevel'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FineTuningJobEventLevel'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FineTuningJobEventLevel'EnumInfo -- ^ Represents the JSON value @"info"@
  | FineTuningJobEventLevel'EnumWarn -- ^ Represents the JSON value @"warn"@
  | FineTuningJobEventLevel'EnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FineTuningJobEventLevel'
    where {toJSON (FineTuningJobEventLevel'Other val) = val;
           toJSON (FineTuningJobEventLevel'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (FineTuningJobEventLevel'EnumInfo) = "info";
           toJSON (FineTuningJobEventLevel'EnumWarn) = "warn";
           toJSON (FineTuningJobEventLevel'EnumError) = "error"}
instance Data.Aeson.Types.FromJSON.FromJSON FineTuningJobEventLevel'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "info" -> FineTuningJobEventLevel'EnumInfo
                                             | val GHC.Classes.== "warn" -> FineTuningJobEventLevel'EnumWarn
                                             | val GHC.Classes.== "error" -> FineTuningJobEventLevel'EnumError
                                             | GHC.Base.otherwise -> FineTuningJobEventLevel'Other val)}
