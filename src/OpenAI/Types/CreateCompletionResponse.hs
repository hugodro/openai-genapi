-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CreateCompletionResponse
module OpenAI.Types.CreateCompletionResponse where

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
import {-# SOURCE #-} OpenAI.Types.CompletionUsage

-- | Defines the object schema located at @components.schemas.CreateCompletionResponse@ in the specification.
-- 
-- Represents a completion response from the API. Note: both the streamed and non-streamed response objects share the same shape (unlike the chat endpoint).
data CreateCompletionResponse = CreateCompletionResponse {
  -- | choices: The list of completion choices the model generated for the input prompt.
  createCompletionResponseChoices :: ([CreateCompletionResponseChoices'])
  -- | created: The Unix timestamp (in seconds) of when the completion was created.
  , createCompletionResponseCreated :: GHC.Types.Int
  -- | id: A unique identifier for the completion.
  , createCompletionResponseId :: Data.Text.Internal.Text
  -- | model: The model used for completion.
  , createCompletionResponseModel :: Data.Text.Internal.Text
  -- | system_fingerprint: This fingerprint represents the backend configuration that the model runs with.
  -- 
  -- Can be used in conjunction with the \`seed\` request parameter to understand when backend changes have been made that might impact determinism.
  , createCompletionResponseSystemFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | usage: Usage statistics for the completion request.
  , createCompletionResponseUsage :: (GHC.Maybe.Maybe CompletionUsage)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateCompletionResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["choices" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices obj] : ["created" Data.Aeson.Types.ToJSON..= createCompletionResponseCreated obj] : ["id" Data.Aeson.Types.ToJSON..= createCompletionResponseId obj] : ["model" Data.Aeson.Types.ToJSON..= createCompletionResponseModel obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_fingerprint" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseSystemFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseUsage obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "text_completion"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["choices" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices obj] : ["created" Data.Aeson.Types.ToJSON..= createCompletionResponseCreated obj] : ["id" Data.Aeson.Types.ToJSON..= createCompletionResponseId obj] : ["model" Data.Aeson.Types.ToJSON..= createCompletionResponseModel obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_fingerprint" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseSystemFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usage" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseUsage obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "text_completion"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateCompletionResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateCompletionResponse" (\obj -> (((((GHC.Base.pure CreateCompletionResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "choices")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "model")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "system_fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "usage"))}
-- | Create a new 'CreateCompletionResponse' with all required fields.
mkCreateCompletionResponse :: [CreateCompletionResponseChoices'] -- ^ 'createCompletionResponseChoices'
  -> GHC.Types.Int -- ^ 'createCompletionResponseCreated'
  -> Data.Text.Internal.Text -- ^ 'createCompletionResponseId'
  -> Data.Text.Internal.Text -- ^ 'createCompletionResponseModel'
  -> CreateCompletionResponse
mkCreateCompletionResponse createCompletionResponseChoices createCompletionResponseCreated createCompletionResponseId createCompletionResponseModel = CreateCompletionResponse{createCompletionResponseChoices = createCompletionResponseChoices,
                                                                                                                                                                               createCompletionResponseCreated = createCompletionResponseCreated,
                                                                                                                                                                               createCompletionResponseId = createCompletionResponseId,
                                                                                                                                                                               createCompletionResponseModel = createCompletionResponseModel,
                                                                                                                                                                               createCompletionResponseSystemFingerprint = GHC.Maybe.Nothing,
                                                                                                                                                                               createCompletionResponseUsage = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.CreateCompletionResponse.properties.choices.items@ in the specification.
-- 
-- 
data CreateCompletionResponseChoices' = CreateCompletionResponseChoices' {
  -- | finish_reason: The reason the model stopped generating tokens. This will be \`stop\` if the model hit a natural stop point or a provided stop sequence,
  -- \`length\` if the maximum number of tokens specified in the request was reached,
  -- or \`content_filter\` if content was omitted due to a flag from our content filters.
  createCompletionResponseChoices'FinishReason :: CreateCompletionResponseChoices'FinishReason'
  -- | index
  , createCompletionResponseChoices'Index :: GHC.Types.Int
  -- | logprobs
  , createCompletionResponseChoices'Logprobs :: (OpenAI.Common.Nullable CreateCompletionResponseChoices'Logprobs'NonNullable)
  -- | text
  , createCompletionResponseChoices'Text :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateCompletionResponseChoices'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["finish_reason" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'FinishReason obj] : ["index" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'Index obj] : ["logprobs" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'Logprobs obj] : ["text" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'Text obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["finish_reason" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'FinishReason obj] : ["index" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'Index obj] : ["logprobs" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'Logprobs obj] : ["text" Data.Aeson.Types.ToJSON..= createCompletionResponseChoices'Text obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateCompletionResponseChoices'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateCompletionResponseChoices'" (\obj -> (((GHC.Base.pure CreateCompletionResponseChoices' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finish_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "index")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "logprobs")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "text"))}
-- | Create a new 'CreateCompletionResponseChoices'' with all required fields.
mkCreateCompletionResponseChoices' :: CreateCompletionResponseChoices'FinishReason' -- ^ 'createCompletionResponseChoices'FinishReason'
  -> GHC.Types.Int -- ^ 'createCompletionResponseChoices'Index'
  -> OpenAI.Common.Nullable CreateCompletionResponseChoices'Logprobs'NonNullable -- ^ 'createCompletionResponseChoices'Logprobs'
  -> Data.Text.Internal.Text -- ^ 'createCompletionResponseChoices'Text'
  -> CreateCompletionResponseChoices'
mkCreateCompletionResponseChoices' createCompletionResponseChoices'FinishReason createCompletionResponseChoices'Index createCompletionResponseChoices'Logprobs createCompletionResponseChoices'Text = CreateCompletionResponseChoices'{createCompletionResponseChoices'FinishReason = createCompletionResponseChoices'FinishReason,
                                                                                                                                                                                                                                       createCompletionResponseChoices'Index = createCompletionResponseChoices'Index,
                                                                                                                                                                                                                                       createCompletionResponseChoices'Logprobs = createCompletionResponseChoices'Logprobs,
                                                                                                                                                                                                                                       createCompletionResponseChoices'Text = createCompletionResponseChoices'Text}
-- | Defines the enum schema located at @components.schemas.CreateCompletionResponse.properties.choices.items.properties.finish_reason@ in the specification.
-- 
-- The reason the model stopped generating tokens. This will be \`stop\` if the model hit a natural stop point or a provided stop sequence,
-- \`length\` if the maximum number of tokens specified in the request was reached,
-- or \`content_filter\` if content was omitted due to a flag from our content filters.
data CreateCompletionResponseChoices'FinishReason' =
   CreateCompletionResponseChoices'FinishReason'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateCompletionResponseChoices'FinishReason'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateCompletionResponseChoices'FinishReason'EnumStop -- ^ Represents the JSON value @"stop"@
  | CreateCompletionResponseChoices'FinishReason'EnumLength -- ^ Represents the JSON value @"length"@
  | CreateCompletionResponseChoices'FinishReason'EnumContentFilter -- ^ Represents the JSON value @"content_filter"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateCompletionResponseChoices'FinishReason'
    where {toJSON (CreateCompletionResponseChoices'FinishReason'Other val) = val;
           toJSON (CreateCompletionResponseChoices'FinishReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreateCompletionResponseChoices'FinishReason'EnumStop) = "stop";
           toJSON (CreateCompletionResponseChoices'FinishReason'EnumLength) = "length";
           toJSON (CreateCompletionResponseChoices'FinishReason'EnumContentFilter) = "content_filter"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateCompletionResponseChoices'FinishReason'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "stop" -> CreateCompletionResponseChoices'FinishReason'EnumStop
                                             | val GHC.Classes.== "length" -> CreateCompletionResponseChoices'FinishReason'EnumLength
                                             | val GHC.Classes.== "content_filter" -> CreateCompletionResponseChoices'FinishReason'EnumContentFilter
                                             | GHC.Base.otherwise -> CreateCompletionResponseChoices'FinishReason'Other val)}
-- | Defines the object schema located at @components.schemas.CreateCompletionResponse.properties.choices.items.properties.logprobs@ in the specification.
-- 
-- 
data CreateCompletionResponseChoices'Logprobs'NonNullable = CreateCompletionResponseChoices'Logprobs'NonNullable {
  -- | text_offset
  createCompletionResponseChoices'Logprobs'NonNullableTextOffset :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | token_logprobs
  , createCompletionResponseChoices'Logprobs'NonNullableTokenLogprobs :: (GHC.Maybe.Maybe ([GHC.Types.Double]))
  -- | tokens
  , createCompletionResponseChoices'Logprobs'NonNullableTokens :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | top_logprobs
  , createCompletionResponseChoices'Logprobs'NonNullableTopLogprobs :: (GHC.Maybe.Maybe ([Data.Aeson.Types.Internal.Object]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateCompletionResponseChoices'Logprobs'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("text_offset" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTextOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("token_logprobs" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTokenLogprobs obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tokens" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTokens obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("top_logprobs" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTopLogprobs obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("text_offset" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTextOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("token_logprobs" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTokenLogprobs obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tokens" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTokens obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("top_logprobs" Data.Aeson.Types.ToJSON..=)) (createCompletionResponseChoices'Logprobs'NonNullableTopLogprobs obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateCompletionResponseChoices'Logprobs'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateCompletionResponseChoices'Logprobs'NonNullable" (\obj -> (((GHC.Base.pure CreateCompletionResponseChoices'Logprobs'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "text_offset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "token_logprobs")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tokens")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "top_logprobs"))}
-- | Create a new 'CreateCompletionResponseChoices'Logprobs'NonNullable' with all required fields.
mkCreateCompletionResponseChoices'Logprobs'NonNullable :: CreateCompletionResponseChoices'Logprobs'NonNullable
mkCreateCompletionResponseChoices'Logprobs'NonNullable = CreateCompletionResponseChoices'Logprobs'NonNullable{createCompletionResponseChoices'Logprobs'NonNullableTextOffset = GHC.Maybe.Nothing,
                                                                                                              createCompletionResponseChoices'Logprobs'NonNullableTokenLogprobs = GHC.Maybe.Nothing,
                                                                                                              createCompletionResponseChoices'Logprobs'NonNullableTokens = GHC.Maybe.Nothing,
                                                                                                              createCompletionResponseChoices'Logprobs'NonNullableTopLogprobs = GHC.Maybe.Nothing}
