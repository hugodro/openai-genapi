-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema MessageObject
module OpenAI.Types.MessageObject where

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
import {-# SOURCE #-} OpenAI.Types.MessageContentImageFileObject
import {-# SOURCE #-} OpenAI.Types.MessageContentTextObject

-- | Defines the object schema located at @components.schemas.MessageObject@ in the specification.
-- 
-- Represents a message within a [thread](\/docs\/api-reference\/threads).
data MessageObject = MessageObject {
  -- | assistant_id: If applicable, the ID of the [assistant](\/docs\/api-reference\/assistants) that authored this message.
  messageObjectAssistantId :: (OpenAI.Common.Nullable Data.Text.Internal.Text)
  -- | content: The content of the message in array of text and\/or images.
  , messageObjectContent :: ([MessageObjectContent'Variants])
  -- | created_at: The Unix timestamp (in seconds) for when the message was created.
  , messageObjectCreatedAt :: GHC.Types.Int
  -- | file_ids: A list of [file](\/docs\/api-reference\/files) IDs that the assistant should use. Useful for tools like retrieval and code_interpreter that can access files. A maximum of 10 files can be attached to a message.
  -- 
  -- Constraints:
  -- 
  -- * Must have a maximum of 10 items
  , messageObjectFileIds :: ([Data.Text.Internal.Text])
  -- | id: The identifier, which can be referenced in API endpoints.
  , messageObjectId :: Data.Text.Internal.Text
  -- | metadata: Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.
  , messageObjectMetadata :: (OpenAI.Common.Nullable Data.Aeson.Types.Internal.Object)
  -- | role: The entity that produced the message. One of \`user\` or \`assistant\`.
  , messageObjectRole :: MessageObjectRole'
  -- | run_id: If applicable, the ID of the [run](\/docs\/api-reference\/runs) associated with the authoring of this message.
  , messageObjectRunId :: (OpenAI.Common.Nullable Data.Text.Internal.Text)
  -- | thread_id: The [thread](\/docs\/api-reference\/threads) ID that this message belongs to.
  , messageObjectThreadId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MessageObject
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["assistant_id" Data.Aeson.Types.ToJSON..= messageObjectAssistantId obj] : ["content" Data.Aeson.Types.ToJSON..= messageObjectContent obj] : ["created_at" Data.Aeson.Types.ToJSON..= messageObjectCreatedAt obj] : ["file_ids" Data.Aeson.Types.ToJSON..= messageObjectFileIds obj] : ["id" Data.Aeson.Types.ToJSON..= messageObjectId obj] : ["metadata" Data.Aeson.Types.ToJSON..= messageObjectMetadata obj] : ["role" Data.Aeson.Types.ToJSON..= messageObjectRole obj] : ["run_id" Data.Aeson.Types.ToJSON..= messageObjectRunId obj] : ["thread_id" Data.Aeson.Types.ToJSON..= messageObjectThreadId obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread.message"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["assistant_id" Data.Aeson.Types.ToJSON..= messageObjectAssistantId obj] : ["content" Data.Aeson.Types.ToJSON..= messageObjectContent obj] : ["created_at" Data.Aeson.Types.ToJSON..= messageObjectCreatedAt obj] : ["file_ids" Data.Aeson.Types.ToJSON..= messageObjectFileIds obj] : ["id" Data.Aeson.Types.ToJSON..= messageObjectId obj] : ["metadata" Data.Aeson.Types.ToJSON..= messageObjectMetadata obj] : ["role" Data.Aeson.Types.ToJSON..= messageObjectRole obj] : ["run_id" Data.Aeson.Types.ToJSON..= messageObjectRunId obj] : ["thread_id" Data.Aeson.Types.ToJSON..= messageObjectThreadId obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "thread.message"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON MessageObject
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "MessageObject" (\obj -> ((((((((GHC.Base.pure MessageObject GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assistant_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_ids")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "role")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "run_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "thread_id"))}
-- | Create a new 'MessageObject' with all required fields.
mkMessageObject :: OpenAI.Common.Nullable Data.Text.Internal.Text -- ^ 'messageObjectAssistantId'
  -> [MessageObjectContent'Variants] -- ^ 'messageObjectContent'
  -> GHC.Types.Int -- ^ 'messageObjectCreatedAt'
  -> [Data.Text.Internal.Text] -- ^ 'messageObjectFileIds'
  -> Data.Text.Internal.Text -- ^ 'messageObjectId'
  -> OpenAI.Common.Nullable Data.Aeson.Types.Internal.Object -- ^ 'messageObjectMetadata'
  -> MessageObjectRole' -- ^ 'messageObjectRole'
  -> OpenAI.Common.Nullable Data.Text.Internal.Text -- ^ 'messageObjectRunId'
  -> Data.Text.Internal.Text -- ^ 'messageObjectThreadId'
  -> MessageObject
mkMessageObject messageObjectAssistantId messageObjectContent messageObjectCreatedAt messageObjectFileIds messageObjectId messageObjectMetadata messageObjectRole messageObjectRunId messageObjectThreadId = MessageObject{messageObjectAssistantId = messageObjectAssistantId,
                                                                                                                                                                                                                           messageObjectContent = messageObjectContent,
                                                                                                                                                                                                                           messageObjectCreatedAt = messageObjectCreatedAt,
                                                                                                                                                                                                                           messageObjectFileIds = messageObjectFileIds,
                                                                                                                                                                                                                           messageObjectId = messageObjectId,
                                                                                                                                                                                                                           messageObjectMetadata = messageObjectMetadata,
                                                                                                                                                                                                                           messageObjectRole = messageObjectRole,
                                                                                                                                                                                                                           messageObjectRunId = messageObjectRunId,
                                                                                                                                                                                                                           messageObjectThreadId = messageObjectThreadId}
-- | Defines the oneOf schema located at @components.schemas.MessageObject.properties.content.items.oneOf@ in the specification.
-- 
-- 
data MessageObjectContent'Variants =
   MessageObjectContent'MessageContentImageFileObject MessageContentImageFileObject
  | MessageObjectContent'MessageContentTextObject MessageContentTextObject
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MessageObjectContent'Variants
    where {toJSON (MessageObjectContent'MessageContentImageFileObject a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (MessageObjectContent'MessageContentTextObject a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON MessageObjectContent'Variants
    where {parseJSON val = case (MessageObjectContent'MessageContentImageFileObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((MessageObjectContent'MessageContentTextObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.MessageObject.properties.role@ in the specification.
-- 
-- The entity that produced the message. One of \`user\` or \`assistant\`.
data MessageObjectRole' =
   MessageObjectRole'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | MessageObjectRole'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | MessageObjectRole'EnumUser -- ^ Represents the JSON value @"user"@
  | MessageObjectRole'EnumAssistant -- ^ Represents the JSON value @"assistant"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MessageObjectRole'
    where {toJSON (MessageObjectRole'Other val) = val;
           toJSON (MessageObjectRole'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (MessageObjectRole'EnumUser) = "user";
           toJSON (MessageObjectRole'EnumAssistant) = "assistant"}
instance Data.Aeson.Types.FromJSON.FromJSON MessageObjectRole'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "user" -> MessageObjectRole'EnumUser
                                             | val GHC.Classes.== "assistant" -> MessageObjectRole'EnumAssistant
                                             | GHC.Base.otherwise -> MessageObjectRole'Other val)}
