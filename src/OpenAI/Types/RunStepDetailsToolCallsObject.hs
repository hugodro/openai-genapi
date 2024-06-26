-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema RunStepDetailsToolCallsObject
module OpenAI.Types.RunStepDetailsToolCallsObject where

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
import {-# SOURCE #-} OpenAI.Types.RunStepDetailsToolCallsCodeObject
import {-# SOURCE #-} OpenAI.Types.RunStepDetailsToolCallsFunctionObject
import {-# SOURCE #-} OpenAI.Types.RunStepDetailsToolCallsRetrievalObject

-- | Defines the object schema located at @components.schemas.RunStepDetailsToolCallsObject@ in the specification.
-- 
-- Details of the tool call.
data RunStepDetailsToolCallsObject = RunStepDetailsToolCallsObject {
  -- | tool_calls: An array of tool calls the run step was involved in. These can be associated with one of three types of tools: \`code_interpreter\`, \`retrieval\`, or \`function\`.
  runStepDetailsToolCallsObjectToolCalls :: ([RunStepDetailsToolCallsObjectToolCalls'Variants])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepDetailsToolCallsObject
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tool_calls" Data.Aeson.Types.ToJSON..= runStepDetailsToolCallsObjectToolCalls obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tool_calls"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tool_calls" Data.Aeson.Types.ToJSON..= runStepDetailsToolCallsObjectToolCalls obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tool_calls"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepDetailsToolCallsObject
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunStepDetailsToolCallsObject" (\obj -> GHC.Base.pure RunStepDetailsToolCallsObject GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tool_calls"))}
-- | Create a new 'RunStepDetailsToolCallsObject' with all required fields.
mkRunStepDetailsToolCallsObject :: [RunStepDetailsToolCallsObjectToolCalls'Variants] -- ^ 'runStepDetailsToolCallsObjectToolCalls'
  -> RunStepDetailsToolCallsObject
mkRunStepDetailsToolCallsObject runStepDetailsToolCallsObjectToolCalls = RunStepDetailsToolCallsObject{runStepDetailsToolCallsObjectToolCalls = runStepDetailsToolCallsObjectToolCalls}
-- | Defines the oneOf schema located at @components.schemas.RunStepDetailsToolCallsObject.properties.tool_calls.items.oneOf@ in the specification.
-- 
-- 
data RunStepDetailsToolCallsObjectToolCalls'Variants =
   RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsCodeObject RunStepDetailsToolCallsCodeObject
  | RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsRetrievalObject RunStepDetailsToolCallsRetrievalObject
  | RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsFunctionObject RunStepDetailsToolCallsFunctionObject
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepDetailsToolCallsObjectToolCalls'Variants
    where {toJSON (RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsCodeObject a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsRetrievalObject a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsFunctionObject a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepDetailsToolCallsObjectToolCalls'Variants
    where {parseJSON val = case (RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsCodeObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsRetrievalObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RunStepDetailsToolCallsObjectToolCalls'RunStepDetailsToolCallsFunctionObject Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
