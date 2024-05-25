-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatCompletionRequestToolMessage
module OpenAI.Types.ChatCompletionRequestToolMessage where

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

-- | Defines the object schema located at @components.schemas.ChatCompletionRequestToolMessage@ in the specification.
-- 
-- 
data ChatCompletionRequestToolMessage = ChatCompletionRequestToolMessage {
  -- | content: The contents of the tool message.
  chatCompletionRequestToolMessageContent :: Data.Text.Internal.Text
  -- | tool_call_id: Tool call that this message is responding to.
  , chatCompletionRequestToolMessageToolCallId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatCompletionRequestToolMessage
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["content" Data.Aeson.Types.ToJSON..= chatCompletionRequestToolMessageContent obj] : ["tool_call_id" Data.Aeson.Types.ToJSON..= chatCompletionRequestToolMessageToolCallId obj] : ["role" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tool"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["content" Data.Aeson.Types.ToJSON..= chatCompletionRequestToolMessageContent obj] : ["tool_call_id" Data.Aeson.Types.ToJSON..= chatCompletionRequestToolMessageToolCallId obj] : ["role" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tool"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ChatCompletionRequestToolMessage
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatCompletionRequestToolMessage" (\obj -> (GHC.Base.pure ChatCompletionRequestToolMessage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tool_call_id"))}
-- | Create a new 'ChatCompletionRequestToolMessage' with all required fields.
mkChatCompletionRequestToolMessage :: Data.Text.Internal.Text -- ^ 'chatCompletionRequestToolMessageContent'
  -> Data.Text.Internal.Text -- ^ 'chatCompletionRequestToolMessageToolCallId'
  -> ChatCompletionRequestToolMessage
mkChatCompletionRequestToolMessage chatCompletionRequestToolMessageContent chatCompletionRequestToolMessageToolCallId = ChatCompletionRequestToolMessage{chatCompletionRequestToolMessageContent = chatCompletionRequestToolMessageContent,
                                                                                                                                                         chatCompletionRequestToolMessageToolCallId = chatCompletionRequestToolMessageToolCallId}