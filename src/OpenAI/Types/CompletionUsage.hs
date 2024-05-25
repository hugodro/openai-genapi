-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CompletionUsage
module OpenAI.Types.CompletionUsage where

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

-- | Defines the object schema located at @components.schemas.CompletionUsage@ in the specification.
-- 
-- Usage statistics for the completion request.
data CompletionUsage = CompletionUsage {
  -- | completion_tokens: Number of tokens in the generated completion.
  completionUsageCompletionTokens :: GHC.Types.Int
  -- | prompt_tokens: Number of tokens in the prompt.
  , completionUsagePromptTokens :: GHC.Types.Int
  -- | total_tokens: Total number of tokens used in the request (prompt + completion).
  , completionUsageTotalTokens :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CompletionUsage
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["completion_tokens" Data.Aeson.Types.ToJSON..= completionUsageCompletionTokens obj] : ["prompt_tokens" Data.Aeson.Types.ToJSON..= completionUsagePromptTokens obj] : ["total_tokens" Data.Aeson.Types.ToJSON..= completionUsageTotalTokens obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["completion_tokens" Data.Aeson.Types.ToJSON..= completionUsageCompletionTokens obj] : ["prompt_tokens" Data.Aeson.Types.ToJSON..= completionUsagePromptTokens obj] : ["total_tokens" Data.Aeson.Types.ToJSON..= completionUsageTotalTokens obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CompletionUsage
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CompletionUsage" (\obj -> ((GHC.Base.pure CompletionUsage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "completion_tokens")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prompt_tokens")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_tokens"))}
-- | Create a new 'CompletionUsage' with all required fields.
mkCompletionUsage :: GHC.Types.Int -- ^ 'completionUsageCompletionTokens'
  -> GHC.Types.Int -- ^ 'completionUsagePromptTokens'
  -> GHC.Types.Int -- ^ 'completionUsageTotalTokens'
  -> CompletionUsage
mkCompletionUsage completionUsageCompletionTokens completionUsagePromptTokens completionUsageTotalTokens = CompletionUsage{completionUsageCompletionTokens = completionUsageCompletionTokens,
                                                                                                                           completionUsagePromptTokens = completionUsagePromptTokens,
                                                                                                                           completionUsageTotalTokens = completionUsageTotalTokens}