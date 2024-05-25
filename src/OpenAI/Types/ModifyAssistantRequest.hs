-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ModifyAssistantRequest
module OpenAI.Types.ModifyAssistantRequest where

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
import {-# SOURCE #-} OpenAI.Types.AssistantToolsCode
import {-# SOURCE #-} OpenAI.Types.AssistantToolsFunction
import {-# SOURCE #-} OpenAI.Types.AssistantToolsRetrieval

-- | Defines the object schema located at @components.schemas.ModifyAssistantRequest@ in the specification.
-- 
-- 
data ModifyAssistantRequest = ModifyAssistantRequest {
  -- | description: The description of the assistant. The maximum length is 512 characters.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 512
  modifyAssistantRequestDescription :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable Data.Text.Internal.Text))
  -- | file_ids: A list of [File](\/docs\/api-reference\/files) IDs attached to this assistant. There can be a maximum of 20 files attached to the assistant. Files are ordered by their creation date in ascending order. If a file was previously attached to the list but does not show up in the list, it will be deleted from the assistant.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Must have a maximum of 20 items
  , modifyAssistantRequestFileIds :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | instructions: The system instructions that the assistant uses. The maximum length is 32768 characters.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32768
  , modifyAssistantRequestInstructions :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable Data.Text.Internal.Text))
  -- | metadata: Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.
  , modifyAssistantRequestMetadata :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable Data.Aeson.Types.Internal.Object))
  -- | model: ID of the model to use. You can use the [List models](\/docs\/api-reference\/models\/list) API to see all of your available models, or see our [Model overview](\/docs\/models\/overview) for descriptions of them.
  , modifyAssistantRequestModel :: (GHC.Maybe.Maybe ModifyAssistantRequestModel'Variants)
  -- | name: The name of the assistant. The maximum length is 256 characters.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 256
  , modifyAssistantRequestName :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable Data.Text.Internal.Text))
  -- | tools: A list of tool enabled on the assistant. There can be a maximum of 128 tools per assistant. Tools can be of types \`code_interpreter\`, \`retrieval\`, or \`function\`.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Must have a maximum of 128 items
  , modifyAssistantRequestTools :: (GHC.Maybe.Maybe ([ModifyAssistantRequestTools'Variants]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ModifyAssistantRequest
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("file_ids" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestFileIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instructions" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestInstructions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("model" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestModel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tools" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestTools obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("file_ids" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestFileIds obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instructions" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestInstructions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("model" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestModel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tools" Data.Aeson.Types.ToJSON..=)) (modifyAssistantRequestTools obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ModifyAssistantRequest
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ModifyAssistantRequest" (\obj -> ((((((GHC.Base.pure ModifyAssistantRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "file_ids")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "instructions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "model")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tools"))}
-- | Create a new 'ModifyAssistantRequest' with all required fields.
mkModifyAssistantRequest :: ModifyAssistantRequest
mkModifyAssistantRequest = ModifyAssistantRequest{modifyAssistantRequestDescription = GHC.Maybe.Nothing,
                                                  modifyAssistantRequestFileIds = GHC.Maybe.Nothing,
                                                  modifyAssistantRequestInstructions = GHC.Maybe.Nothing,
                                                  modifyAssistantRequestMetadata = GHC.Maybe.Nothing,
                                                  modifyAssistantRequestModel = GHC.Maybe.Nothing,
                                                  modifyAssistantRequestName = GHC.Maybe.Nothing,
                                                  modifyAssistantRequestTools = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.ModifyAssistantRequest.properties.model.anyOf@ in the specification.
-- 
-- ID of the model to use. You can use the [List models](\/docs\/api-reference\/models\/list) API to see all of your available models, or see our [Model overview](\/docs\/models\/overview) for descriptions of them.
data ModifyAssistantRequestModel'Variants =
   ModifyAssistantRequestModel'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ModifyAssistantRequestModel'Variants
    where {toJSON (ModifyAssistantRequestModel'Text a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ModifyAssistantRequestModel'Variants
    where {parseJSON val = case (ModifyAssistantRequestModel'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.ModifyAssistantRequest.properties.tools.items.oneOf@ in the specification.
-- 
-- 
data ModifyAssistantRequestTools'Variants =
   ModifyAssistantRequestTools'AssistantToolsCode AssistantToolsCode
  | ModifyAssistantRequestTools'AssistantToolsRetrieval AssistantToolsRetrieval
  | ModifyAssistantRequestTools'AssistantToolsFunction AssistantToolsFunction
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ModifyAssistantRequestTools'Variants
    where {toJSON (ModifyAssistantRequestTools'AssistantToolsCode a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ModifyAssistantRequestTools'AssistantToolsRetrieval a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ModifyAssistantRequestTools'AssistantToolsFunction a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ModifyAssistantRequestTools'Variants
    where {parseJSON val = case (ModifyAssistantRequestTools'AssistantToolsCode Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ModifyAssistantRequestTools'AssistantToolsRetrieval Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ModifyAssistantRequestTools'AssistantToolsFunction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
