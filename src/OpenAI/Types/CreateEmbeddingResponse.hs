-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CreateEmbeddingResponse
module OpenAI.Types.CreateEmbeddingResponse where

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
import {-# SOURCE #-} OpenAI.Types.Embedding

-- | Defines the object schema located at @components.schemas.CreateEmbeddingResponse@ in the specification.
-- 
-- 
data CreateEmbeddingResponse = CreateEmbeddingResponse {
  -- | data: The list of embeddings generated by the model.
  createEmbeddingResponseData :: ([Embedding])
  -- | model: The name of the model used to generate the embedding.
  , createEmbeddingResponseModel :: Data.Text.Internal.Text
  -- | usage: The usage information for the request.
  , createEmbeddingResponseUsage :: CreateEmbeddingResponseUsage'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateEmbeddingResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= createEmbeddingResponseData obj] : ["model" Data.Aeson.Types.ToJSON..= createEmbeddingResponseModel obj] : ["usage" Data.Aeson.Types.ToJSON..= createEmbeddingResponseUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= createEmbeddingResponseData obj] : ["model" Data.Aeson.Types.ToJSON..= createEmbeddingResponseModel obj] : ["usage" Data.Aeson.Types.ToJSON..= createEmbeddingResponseUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateEmbeddingResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateEmbeddingResponse" (\obj -> ((GHC.Base.pure CreateEmbeddingResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "model")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage"))}
-- | Create a new 'CreateEmbeddingResponse' with all required fields.
mkCreateEmbeddingResponse :: [Embedding] -- ^ 'createEmbeddingResponseData'
  -> Data.Text.Internal.Text -- ^ 'createEmbeddingResponseModel'
  -> CreateEmbeddingResponseUsage' -- ^ 'createEmbeddingResponseUsage'
  -> CreateEmbeddingResponse
mkCreateEmbeddingResponse createEmbeddingResponseData createEmbeddingResponseModel createEmbeddingResponseUsage = CreateEmbeddingResponse{createEmbeddingResponseData = createEmbeddingResponseData,
                                                                                                                                          createEmbeddingResponseModel = createEmbeddingResponseModel,
                                                                                                                                          createEmbeddingResponseUsage = createEmbeddingResponseUsage}
-- | Defines the object schema located at @components.schemas.CreateEmbeddingResponse.properties.usage@ in the specification.
-- 
-- The usage information for the request.
data CreateEmbeddingResponseUsage' = CreateEmbeddingResponseUsage' {
  -- | prompt_tokens: The number of tokens used by the prompt.
  createEmbeddingResponseUsage'PromptTokens :: GHC.Types.Int
  -- | total_tokens: The total number of tokens used by the request.
  , createEmbeddingResponseUsage'TotalTokens :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateEmbeddingResponseUsage'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["prompt_tokens" Data.Aeson.Types.ToJSON..= createEmbeddingResponseUsage'PromptTokens obj] : ["total_tokens" Data.Aeson.Types.ToJSON..= createEmbeddingResponseUsage'TotalTokens obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["prompt_tokens" Data.Aeson.Types.ToJSON..= createEmbeddingResponseUsage'PromptTokens obj] : ["total_tokens" Data.Aeson.Types.ToJSON..= createEmbeddingResponseUsage'TotalTokens obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateEmbeddingResponseUsage'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateEmbeddingResponseUsage'" (\obj -> (GHC.Base.pure CreateEmbeddingResponseUsage' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prompt_tokens")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_tokens"))}
-- | Create a new 'CreateEmbeddingResponseUsage'' with all required fields.
mkCreateEmbeddingResponseUsage' :: GHC.Types.Int -- ^ 'createEmbeddingResponseUsage'PromptTokens'
  -> GHC.Types.Int -- ^ 'createEmbeddingResponseUsage'TotalTokens'
  -> CreateEmbeddingResponseUsage'
mkCreateEmbeddingResponseUsage' createEmbeddingResponseUsage'PromptTokens createEmbeddingResponseUsage'TotalTokens = CreateEmbeddingResponseUsage'{createEmbeddingResponseUsage'PromptTokens = createEmbeddingResponseUsage'PromptTokens,
                                                                                                                                                   createEmbeddingResponseUsage'TotalTokens = createEmbeddingResponseUsage'TotalTokens}
