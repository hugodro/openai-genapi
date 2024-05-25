-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema RunStepObject
module OpenAI.Types.RunStepObject where

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
import {-# SOURCE #-} OpenAI.Types.RunStepCompletionUsage
import {-# SOURCE #-} OpenAI.Types.RunStepDetailsMessageCreationObject
import {-# SOURCE #-} OpenAI.Types.RunStepDetailsToolCallsObject

-- | Defines the object schema located at @components.schemas.RunStepObject@ in the specification.
-- 
-- Represents a step in execution of a run.
data RunStepObject = RunStepObject {
  -- | assistant_id: The ID of the [assistant](\/docs\/api-reference\/assistants) associated with the run step.
  runStepObjectAssistantId :: Data.Text.Internal.Text
  -- | cancelled_at: The Unix timestamp (in seconds) for when the run step was cancelled.
  , runStepObjectCancelledAt :: (OpenAI.Common.Nullable GHC.Types.Int)
  -- | completed_at: The Unix timestamp (in seconds) for when the run step completed.
  , runStepObjectCompletedAt :: (OpenAI.Common.Nullable GHC.Types.Int)
  -- | created_at: The Unix timestamp (in seconds) for when the run step was created.
  , runStepObjectCreatedAt :: GHC.Types.Int
  -- | expired_at: The Unix timestamp (in seconds) for when the run step expired. A step is considered expired if the parent run is expired.
  , runStepObjectExpiredAt :: (OpenAI.Common.Nullable GHC.Types.Int)
  -- | failed_at: The Unix timestamp (in seconds) for when the run step failed.
  , runStepObjectFailedAt :: (OpenAI.Common.Nullable GHC.Types.Int)
  -- | id: The identifier of the run step, which can be referenced in API endpoints.
  , runStepObjectId :: Data.Text.Internal.Text
  -- | last_error: The last error associated with this run step. Will be \`null\` if there are no errors.
  , runStepObjectLastError :: (OpenAI.Common.Nullable RunStepObjectLastError'NonNullable)
  -- | metadata: Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.
  , runStepObjectMetadata :: (OpenAI.Common.Nullable Data.Aeson.Types.Internal.Object)
  -- | run_id: The ID of the [run](\/docs\/api-reference\/runs) that this run step is a part of.
  , runStepObjectRunId :: Data.Text.Internal.Text
  -- | status: The status of the run step, which can be either \`in_progress\`, \`cancelled\`, \`failed\`, \`completed\`, or \`expired\`.
  , runStepObjectStatus :: RunStepObjectStatus'
  -- | step_details: The details of the run step.
  , runStepObjectStepDetails :: RunStepObjectStepDetails'Variants
  -- | thread_id: The ID of the [thread](\/docs\/api-reference\/threads) that was run.
  , runStepObjectThreadId :: Data.Text.Internal.Text
  -- | type: The type of run step, which can be either \`message_creation\` or \`tool_calls\`.
  , runStepObjectType :: RunStepObjectType'
  -- | usage: Usage statistics related to the run step. This value will be \`null\` while the run step\'s status is \`in_progress\`.
  , runStepObjectUsage :: RunStepCompletionUsage
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepObject
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["assistant_id" Data.Aeson.Types.ToJSON..= runStepObjectAssistantId obj] : ["cancelled_at" Data.Aeson.Types.ToJSON..= runStepObjectCancelledAt obj] : ["completed_at" Data.Aeson.Types.ToJSON..= runStepObjectCompletedAt obj] : ["created_at" Data.Aeson.Types.ToJSON..= runStepObjectCreatedAt obj] : ["expired_at" Data.Aeson.Types.ToJSON..= runStepObjectExpiredAt obj] : ["failed_at" Data.Aeson.Types.ToJSON..= runStepObjectFailedAt obj] : ["id" Data.Aeson.Types.ToJSON..= runStepObjectId obj] : ["last_error" Data.Aeson.Types.ToJSON..= runStepObjectLastError obj] : ["metadata" Data.Aeson.Types.ToJSON..= runStepObjectMetadata obj] : ["run_id" Data.Aeson.Types.ToJSON..= runStepObjectRunId obj] : ["status" Data.Aeson.Types.ToJSON..= runStepObjectStatus obj] : ["step_details" Data.Aeson.Types.ToJSON..= runStepObjectStepDetails obj] : ["thread_id" Data.Aeson.Types.ToJSON..= runStepObjectThreadId obj] : ["type" Data.Aeson.Types.ToJSON..= runStepObjectType obj] : ["usage" Data.Aeson.Types.ToJSON..= runStepObjectUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread.run.step"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["assistant_id" Data.Aeson.Types.ToJSON..= runStepObjectAssistantId obj] : ["cancelled_at" Data.Aeson.Types.ToJSON..= runStepObjectCancelledAt obj] : ["completed_at" Data.Aeson.Types.ToJSON..= runStepObjectCompletedAt obj] : ["created_at" Data.Aeson.Types.ToJSON..= runStepObjectCreatedAt obj] : ["expired_at" Data.Aeson.Types.ToJSON..= runStepObjectExpiredAt obj] : ["failed_at" Data.Aeson.Types.ToJSON..= runStepObjectFailedAt obj] : ["id" Data.Aeson.Types.ToJSON..= runStepObjectId obj] : ["last_error" Data.Aeson.Types.ToJSON..= runStepObjectLastError obj] : ["metadata" Data.Aeson.Types.ToJSON..= runStepObjectMetadata obj] : ["run_id" Data.Aeson.Types.ToJSON..= runStepObjectRunId obj] : ["status" Data.Aeson.Types.ToJSON..= runStepObjectStatus obj] : ["step_details" Data.Aeson.Types.ToJSON..= runStepObjectStepDetails obj] : ["thread_id" Data.Aeson.Types.ToJSON..= runStepObjectThreadId obj] : ["type" Data.Aeson.Types.ToJSON..= runStepObjectType obj] : ["usage" Data.Aeson.Types.ToJSON..= runStepObjectUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread.run.step"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepObject
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunStepObject" (\obj -> ((((((((((((((GHC.Base.pure RunStepObject GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assistant_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cancelled_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "completed_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expired_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "failed_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "run_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "step_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "thread_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage"))}
-- | Create a new 'RunStepObject' with all required fields.
mkRunStepObject :: Data.Text.Internal.Text -- ^ 'runStepObjectAssistantId'
  -> OpenAI.Common.Nullable GHC.Types.Int -- ^ 'runStepObjectCancelledAt'
  -> OpenAI.Common.Nullable GHC.Types.Int -- ^ 'runStepObjectCompletedAt'
  -> GHC.Types.Int -- ^ 'runStepObjectCreatedAt'
  -> OpenAI.Common.Nullable GHC.Types.Int -- ^ 'runStepObjectExpiredAt'
  -> OpenAI.Common.Nullable GHC.Types.Int -- ^ 'runStepObjectFailedAt'
  -> Data.Text.Internal.Text -- ^ 'runStepObjectId'
  -> OpenAI.Common.Nullable RunStepObjectLastError'NonNullable -- ^ 'runStepObjectLastError'
  -> OpenAI.Common.Nullable Data.Aeson.Types.Internal.Object -- ^ 'runStepObjectMetadata'
  -> Data.Text.Internal.Text -- ^ 'runStepObjectRunId'
  -> RunStepObjectStatus' -- ^ 'runStepObjectStatus'
  -> RunStepObjectStepDetails'Variants -- ^ 'runStepObjectStepDetails'
  -> Data.Text.Internal.Text -- ^ 'runStepObjectThreadId'
  -> RunStepObjectType' -- ^ 'runStepObjectType'
  -> RunStepCompletionUsage -- ^ 'runStepObjectUsage'
  -> RunStepObject
mkRunStepObject runStepObjectAssistantId runStepObjectCancelledAt runStepObjectCompletedAt runStepObjectCreatedAt runStepObjectExpiredAt runStepObjectFailedAt runStepObjectId runStepObjectLastError runStepObjectMetadata runStepObjectRunId runStepObjectStatus runStepObjectStepDetails runStepObjectThreadId runStepObjectType runStepObjectUsage = RunStepObject{runStepObjectAssistantId = runStepObjectAssistantId,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectCancelledAt = runStepObjectCancelledAt,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectCompletedAt = runStepObjectCompletedAt,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectCreatedAt = runStepObjectCreatedAt,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectExpiredAt = runStepObjectExpiredAt,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectFailedAt = runStepObjectFailedAt,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectId = runStepObjectId,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectLastError = runStepObjectLastError,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectMetadata = runStepObjectMetadata,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectRunId = runStepObjectRunId,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectStatus = runStepObjectStatus,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectStepDetails = runStepObjectStepDetails,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectThreadId = runStepObjectThreadId,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectType = runStepObjectType,
                                                                                                                                                                                                                                                                                                                                                                       runStepObjectUsage = runStepObjectUsage}
-- | Defines the object schema located at @components.schemas.RunStepObject.properties.last_error@ in the specification.
-- 
-- The last error associated with this run step. Will be \`null\` if there are no errors.
data RunStepObjectLastError'NonNullable = RunStepObjectLastError'NonNullable {
  -- | code: One of \`server_error\` or \`rate_limit_exceeded\`.
  runStepObjectLastError'NonNullableCode :: RunStepObjectLastError'NonNullableCode'
  -- | message: A human-readable description of the error.
  , runStepObjectLastError'NonNullableMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepObjectLastError'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= runStepObjectLastError'NonNullableCode obj] : ["message" Data.Aeson.Types.ToJSON..= runStepObjectLastError'NonNullableMessage obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= runStepObjectLastError'NonNullableCode obj] : ["message" Data.Aeson.Types.ToJSON..= runStepObjectLastError'NonNullableMessage obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepObjectLastError'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunStepObjectLastError'NonNullable" (\obj -> (GHC.Base.pure RunStepObjectLastError'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))}
-- | Create a new 'RunStepObjectLastError'NonNullable' with all required fields.
mkRunStepObjectLastError'NonNullable :: RunStepObjectLastError'NonNullableCode' -- ^ 'runStepObjectLastError'NonNullableCode'
  -> Data.Text.Internal.Text -- ^ 'runStepObjectLastError'NonNullableMessage'
  -> RunStepObjectLastError'NonNullable
mkRunStepObjectLastError'NonNullable runStepObjectLastError'NonNullableCode runStepObjectLastError'NonNullableMessage = RunStepObjectLastError'NonNullable{runStepObjectLastError'NonNullableCode = runStepObjectLastError'NonNullableCode,
                                                                                                                                                           runStepObjectLastError'NonNullableMessage = runStepObjectLastError'NonNullableMessage}
-- | Defines the enum schema located at @components.schemas.RunStepObject.properties.last_error.properties.code@ in the specification.
-- 
-- One of \`server_error\` or \`rate_limit_exceeded\`.
data RunStepObjectLastError'NonNullableCode' =
   RunStepObjectLastError'NonNullableCode'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RunStepObjectLastError'NonNullableCode'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RunStepObjectLastError'NonNullableCode'EnumServerError -- ^ Represents the JSON value @"server_error"@
  | RunStepObjectLastError'NonNullableCode'EnumRateLimitExceeded -- ^ Represents the JSON value @"rate_limit_exceeded"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepObjectLastError'NonNullableCode'
    where {toJSON (RunStepObjectLastError'NonNullableCode'Other val) = val;
           toJSON (RunStepObjectLastError'NonNullableCode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (RunStepObjectLastError'NonNullableCode'EnumServerError) = "server_error";
           toJSON (RunStepObjectLastError'NonNullableCode'EnumRateLimitExceeded) = "rate_limit_exceeded"}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepObjectLastError'NonNullableCode'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "server_error" -> RunStepObjectLastError'NonNullableCode'EnumServerError
                                             | val GHC.Classes.== "rate_limit_exceeded" -> RunStepObjectLastError'NonNullableCode'EnumRateLimitExceeded
                                             | GHC.Base.otherwise -> RunStepObjectLastError'NonNullableCode'Other val)}
-- | Defines the enum schema located at @components.schemas.RunStepObject.properties.status@ in the specification.
-- 
-- The status of the run step, which can be either \`in_progress\`, \`cancelled\`, \`failed\`, \`completed\`, or \`expired\`.
data RunStepObjectStatus' =
   RunStepObjectStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RunStepObjectStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RunStepObjectStatus'EnumInProgress -- ^ Represents the JSON value @"in_progress"@
  | RunStepObjectStatus'EnumCancelled -- ^ Represents the JSON value @"cancelled"@
  | RunStepObjectStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | RunStepObjectStatus'EnumCompleted -- ^ Represents the JSON value @"completed"@
  | RunStepObjectStatus'EnumExpired -- ^ Represents the JSON value @"expired"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepObjectStatus'
    where {toJSON (RunStepObjectStatus'Other val) = val;
           toJSON (RunStepObjectStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (RunStepObjectStatus'EnumInProgress) = "in_progress";
           toJSON (RunStepObjectStatus'EnumCancelled) = "cancelled";
           toJSON (RunStepObjectStatus'EnumFailed) = "failed";
           toJSON (RunStepObjectStatus'EnumCompleted) = "completed";
           toJSON (RunStepObjectStatus'EnumExpired) = "expired"}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepObjectStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "in_progress" -> RunStepObjectStatus'EnumInProgress
                                             | val GHC.Classes.== "cancelled" -> RunStepObjectStatus'EnumCancelled
                                             | val GHC.Classes.== "failed" -> RunStepObjectStatus'EnumFailed
                                             | val GHC.Classes.== "completed" -> RunStepObjectStatus'EnumCompleted
                                             | val GHC.Classes.== "expired" -> RunStepObjectStatus'EnumExpired
                                             | GHC.Base.otherwise -> RunStepObjectStatus'Other val)}
-- | Defines the oneOf schema located at @components.schemas.RunStepObject.properties.step_details.oneOf@ in the specification.
-- 
-- The details of the run step.
data RunStepObjectStepDetails'Variants =
   RunStepObjectStepDetails'RunStepDetailsMessageCreationObject RunStepDetailsMessageCreationObject
  | RunStepObjectStepDetails'RunStepDetailsToolCallsObject RunStepDetailsToolCallsObject
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepObjectStepDetails'Variants
    where {toJSON (RunStepObjectStepDetails'RunStepDetailsMessageCreationObject a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (RunStepObjectStepDetails'RunStepDetailsToolCallsObject a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepObjectStepDetails'Variants
    where {parseJSON val = case (RunStepObjectStepDetails'RunStepDetailsMessageCreationObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RunStepObjectStepDetails'RunStepDetailsToolCallsObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.RunStepObject.properties.type@ in the specification.
-- 
-- The type of run step, which can be either \`message_creation\` or \`tool_calls\`.
data RunStepObjectType' =
   RunStepObjectType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RunStepObjectType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RunStepObjectType'EnumMessageCreation -- ^ Represents the JSON value @"message_creation"@
  | RunStepObjectType'EnumToolCalls -- ^ Represents the JSON value @"tool_calls"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepObjectType'
    where {toJSON (RunStepObjectType'Other val) = val;
           toJSON (RunStepObjectType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (RunStepObjectType'EnumMessageCreation) = "message_creation";
           toJSON (RunStepObjectType'EnumToolCalls) = "tool_calls"}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepObjectType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "message_creation" -> RunStepObjectType'EnumMessageCreation
                                             | val GHC.Classes.== "tool_calls" -> RunStepObjectType'EnumToolCalls
                                             | GHC.Base.otherwise -> RunStepObjectType'Other val)}
