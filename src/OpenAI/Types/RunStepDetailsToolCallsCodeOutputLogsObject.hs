-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema RunStepDetailsToolCallsCodeOutputLogsObject
module OpenAI.Types.RunStepDetailsToolCallsCodeOutputLogsObject where

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

-- | Defines the object schema located at @components.schemas.RunStepDetailsToolCallsCodeOutputLogsObject@ in the specification.
-- 
-- Text output from the Code Interpreter tool call as part of a run step.
data RunStepDetailsToolCallsCodeOutputLogsObject = RunStepDetailsToolCallsCodeOutputLogsObject {
  -- | logs: The text output from the Code Interpreter tool call.
  runStepDetailsToolCallsCodeOutputLogsObjectLogs :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RunStepDetailsToolCallsCodeOutputLogsObject
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["logs" Data.Aeson.Types.ToJSON..= runStepDetailsToolCallsCodeOutputLogsObjectLogs obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "logs"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["logs" Data.Aeson.Types.ToJSON..= runStepDetailsToolCallsCodeOutputLogsObjectLogs obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "logs"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RunStepDetailsToolCallsCodeOutputLogsObject
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RunStepDetailsToolCallsCodeOutputLogsObject" (\obj -> GHC.Base.pure RunStepDetailsToolCallsCodeOutputLogsObject GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "logs"))}
-- | Create a new 'RunStepDetailsToolCallsCodeOutputLogsObject' with all required fields.
mkRunStepDetailsToolCallsCodeOutputLogsObject :: Data.Text.Internal.Text -- ^ 'runStepDetailsToolCallsCodeOutputLogsObjectLogs'
  -> RunStepDetailsToolCallsCodeOutputLogsObject
mkRunStepDetailsToolCallsCodeOutputLogsObject runStepDetailsToolCallsCodeOutputLogsObjectLogs = RunStepDetailsToolCallsCodeOutputLogsObject{runStepDetailsToolCallsCodeOutputLogsObjectLogs = runStepDetailsToolCallsCodeOutputLogsObjectLogs}
