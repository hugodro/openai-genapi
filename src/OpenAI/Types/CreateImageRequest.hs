-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CreateImageRequest
module OpenAI.Types.CreateImageRequest where

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

-- | Defines the object schema located at @components.schemas.CreateImageRequest@ in the specification.
-- 
-- 
data CreateImageRequest = CreateImageRequest {
  -- | model: The model to use for image generation.
  createImageRequestModel :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable CreateImageRequestModel'NonNullableVariants))
  -- | n: The number of images to generate. Must be between 1 and 10. For \`dall-e-3\`, only \`n=1\` is supported.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 10.0
  -- * Minimum  of 1.0
  , createImageRequestN :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable GHC.Types.Int))
  -- | prompt: A text description of the desired image(s). The maximum length is 1000 characters for \`dall-e-2\` and 4000 characters for \`dall-e-3\`.
  , createImageRequestPrompt :: Data.Text.Internal.Text
  -- | quality: The quality of the image that will be generated. \`hd\` creates images with finer details and greater consistency across the image. This param is only supported for \`dall-e-3\`.
  , createImageRequestQuality :: (GHC.Maybe.Maybe CreateImageRequestQuality')
  -- | response_format: The format in which the generated images are returned. Must be one of \`url\` or \`b64_json\`.
  , createImageRequestResponseFormat :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable CreateImageRequestResponseFormat'NonNullable))
  -- | size: The size of the generated images. Must be one of \`256x256\`, \`512x512\`, or \`1024x1024\` for \`dall-e-2\`. Must be one of \`1024x1024\`, \`1792x1024\`, or \`1024x1792\` for \`dall-e-3\` models.
  , createImageRequestSize :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable CreateImageRequestSize'NonNullable))
  -- | style: The style of the generated images. Must be one of \`vivid\` or \`natural\`. Vivid causes the model to lean towards generating hyper-real and dramatic images. Natural causes the model to produce more natural, less hyper-real looking images. This param is only supported for \`dall-e-3\`.
  , createImageRequestStyle :: (GHC.Maybe.Maybe (OpenAI.Common.Nullable CreateImageRequestStyle'NonNullable))
  -- | user: A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](\/docs\/guides\/safety-best-practices\/end-user-ids).
  , createImageRequestUser :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateImageRequest
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("model" Data.Aeson.Types.ToJSON..=)) (createImageRequestModel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("n" Data.Aeson.Types.ToJSON..=)) (createImageRequestN obj) : ["prompt" Data.Aeson.Types.ToJSON..= createImageRequestPrompt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quality" Data.Aeson.Types.ToJSON..=)) (createImageRequestQuality obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("response_format" Data.Aeson.Types.ToJSON..=)) (createImageRequestResponseFormat obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (createImageRequestSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("style" Data.Aeson.Types.ToJSON..=)) (createImageRequestStyle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (createImageRequestUser obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("model" Data.Aeson.Types.ToJSON..=)) (createImageRequestModel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("n" Data.Aeson.Types.ToJSON..=)) (createImageRequestN obj) : ["prompt" Data.Aeson.Types.ToJSON..= createImageRequestPrompt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quality" Data.Aeson.Types.ToJSON..=)) (createImageRequestQuality obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("response_format" Data.Aeson.Types.ToJSON..=)) (createImageRequestResponseFormat obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (createImageRequestSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("style" Data.Aeson.Types.ToJSON..=)) (createImageRequestStyle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (createImageRequestUser obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreateImageRequest
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateImageRequest" (\obj -> (((((((GHC.Base.pure CreateImageRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "model")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "n")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prompt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "quality")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "response_format")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "style")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user"))}
-- | Create a new 'CreateImageRequest' with all required fields.
mkCreateImageRequest :: Data.Text.Internal.Text -- ^ 'createImageRequestPrompt'
  -> CreateImageRequest
mkCreateImageRequest createImageRequestPrompt = CreateImageRequest{createImageRequestModel = GHC.Maybe.Nothing,
                                                                   createImageRequestN = GHC.Maybe.Nothing,
                                                                   createImageRequestPrompt = createImageRequestPrompt,
                                                                   createImageRequestQuality = GHC.Maybe.Nothing,
                                                                   createImageRequestResponseFormat = GHC.Maybe.Nothing,
                                                                   createImageRequestSize = GHC.Maybe.Nothing,
                                                                   createImageRequestStyle = GHC.Maybe.Nothing,
                                                                   createImageRequestUser = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.CreateImageRequest.properties.model.anyOf@ in the specification.
-- 
-- 
data CreateImageRequestModel'NonNullableOneOf2 =
   CreateImageRequestModel'NonNullableOneOf2Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateImageRequestModel'NonNullableOneOf2Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateImageRequestModel'NonNullableOneOf2EnumDallE_2 -- ^ Represents the JSON value @"dall-e-2"@
  | CreateImageRequestModel'NonNullableOneOf2EnumDallE_3 -- ^ Represents the JSON value @"dall-e-3"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateImageRequestModel'NonNullableOneOf2
    where {toJSON (CreateImageRequestModel'NonNullableOneOf2Other val) = val;
           toJSON (CreateImageRequestModel'NonNullableOneOf2Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreateImageRequestModel'NonNullableOneOf2EnumDallE_2) = "dall-e-2";
           toJSON (CreateImageRequestModel'NonNullableOneOf2EnumDallE_3) = "dall-e-3"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateImageRequestModel'NonNullableOneOf2
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "dall-e-2" -> CreateImageRequestModel'NonNullableOneOf2EnumDallE_2
                                             | val GHC.Classes.== "dall-e-3" -> CreateImageRequestModel'NonNullableOneOf2EnumDallE_3
                                             | GHC.Base.otherwise -> CreateImageRequestModel'NonNullableOneOf2Other val)}
-- | Defines the oneOf schema located at @components.schemas.CreateImageRequest.properties.model.anyOf@ in the specification.
-- 
-- The model to use for image generation.
data CreateImageRequestModel'NonNullableVariants =
   CreateImageRequestModel'NonNullableText Data.Text.Internal.Text
  | CreateImageRequestModel'NonNullableCreateImageRequestModel'NonNullableOneOf2 CreateImageRequestModel'NonNullableOneOf2
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateImageRequestModel'NonNullableVariants
    where {toJSON (CreateImageRequestModel'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (CreateImageRequestModel'NonNullableCreateImageRequestModel'NonNullableOneOf2 a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON CreateImageRequestModel'NonNullableVariants
    where {parseJSON val = case (CreateImageRequestModel'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CreateImageRequestModel'NonNullableCreateImageRequestModel'NonNullableOneOf2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.CreateImageRequest.properties.quality@ in the specification.
-- 
-- The quality of the image that will be generated. \`hd\` creates images with finer details and greater consistency across the image. This param is only supported for \`dall-e-3\`.
data CreateImageRequestQuality' =
   CreateImageRequestQuality'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateImageRequestQuality'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateImageRequestQuality'EnumStandard -- ^ Represents the JSON value @"standard"@
  | CreateImageRequestQuality'EnumHd -- ^ Represents the JSON value @"hd"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateImageRequestQuality'
    where {toJSON (CreateImageRequestQuality'Other val) = val;
           toJSON (CreateImageRequestQuality'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreateImageRequestQuality'EnumStandard) = "standard";
           toJSON (CreateImageRequestQuality'EnumHd) = "hd"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateImageRequestQuality'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "standard" -> CreateImageRequestQuality'EnumStandard
                                             | val GHC.Classes.== "hd" -> CreateImageRequestQuality'EnumHd
                                             | GHC.Base.otherwise -> CreateImageRequestQuality'Other val)}
-- | Defines the enum schema located at @components.schemas.CreateImageRequest.properties.response_format@ in the specification.
-- 
-- The format in which the generated images are returned. Must be one of \`url\` or \`b64_json\`.
data CreateImageRequestResponseFormat'NonNullable =
   CreateImageRequestResponseFormat'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateImageRequestResponseFormat'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateImageRequestResponseFormat'NonNullableEnumUrl -- ^ Represents the JSON value @"url"@
  | CreateImageRequestResponseFormat'NonNullableEnumB64Json -- ^ Represents the JSON value @"b64_json"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateImageRequestResponseFormat'NonNullable
    where {toJSON (CreateImageRequestResponseFormat'NonNullableOther val) = val;
           toJSON (CreateImageRequestResponseFormat'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreateImageRequestResponseFormat'NonNullableEnumUrl) = "url";
           toJSON (CreateImageRequestResponseFormat'NonNullableEnumB64Json) = "b64_json"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateImageRequestResponseFormat'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "url" -> CreateImageRequestResponseFormat'NonNullableEnumUrl
                                             | val GHC.Classes.== "b64_json" -> CreateImageRequestResponseFormat'NonNullableEnumB64Json
                                             | GHC.Base.otherwise -> CreateImageRequestResponseFormat'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.CreateImageRequest.properties.size@ in the specification.
-- 
-- The size of the generated images. Must be one of \`256x256\`, \`512x512\`, or \`1024x1024\` for \`dall-e-2\`. Must be one of \`1024x1024\`, \`1792x1024\`, or \`1024x1792\` for \`dall-e-3\` models.
data CreateImageRequestSize'NonNullable =
   CreateImageRequestSize'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateImageRequestSize'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateImageRequestSize'NonNullableEnum256x256 -- ^ Represents the JSON value @"256x256"@
  | CreateImageRequestSize'NonNullableEnum512x512 -- ^ Represents the JSON value @"512x512"@
  | CreateImageRequestSize'NonNullableEnum1024x1024 -- ^ Represents the JSON value @"1024x1024"@
  | CreateImageRequestSize'NonNullableEnum1792x1024 -- ^ Represents the JSON value @"1792x1024"@
  | CreateImageRequestSize'NonNullableEnum1024x1792 -- ^ Represents the JSON value @"1024x1792"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateImageRequestSize'NonNullable
    where {toJSON (CreateImageRequestSize'NonNullableOther val) = val;
           toJSON (CreateImageRequestSize'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreateImageRequestSize'NonNullableEnum256x256) = "256x256";
           toJSON (CreateImageRequestSize'NonNullableEnum512x512) = "512x512";
           toJSON (CreateImageRequestSize'NonNullableEnum1024x1024) = "1024x1024";
           toJSON (CreateImageRequestSize'NonNullableEnum1792x1024) = "1792x1024";
           toJSON (CreateImageRequestSize'NonNullableEnum1024x1792) = "1024x1792"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateImageRequestSize'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "256x256" -> CreateImageRequestSize'NonNullableEnum256x256
                                             | val GHC.Classes.== "512x512" -> CreateImageRequestSize'NonNullableEnum512x512
                                             | val GHC.Classes.== "1024x1024" -> CreateImageRequestSize'NonNullableEnum1024x1024
                                             | val GHC.Classes.== "1792x1024" -> CreateImageRequestSize'NonNullableEnum1792x1024
                                             | val GHC.Classes.== "1024x1792" -> CreateImageRequestSize'NonNullableEnum1024x1792
                                             | GHC.Base.otherwise -> CreateImageRequestSize'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.CreateImageRequest.properties.style@ in the specification.
-- 
-- The style of the generated images. Must be one of \`vivid\` or \`natural\`. Vivid causes the model to lean towards generating hyper-real and dramatic images. Natural causes the model to produce more natural, less hyper-real looking images. This param is only supported for \`dall-e-3\`.
data CreateImageRequestStyle'NonNullable =
   CreateImageRequestStyle'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateImageRequestStyle'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateImageRequestStyle'NonNullableEnumVivid -- ^ Represents the JSON value @"vivid"@
  | CreateImageRequestStyle'NonNullableEnumNatural -- ^ Represents the JSON value @"natural"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateImageRequestStyle'NonNullable
    where {toJSON (CreateImageRequestStyle'NonNullableOther val) = val;
           toJSON (CreateImageRequestStyle'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreateImageRequestStyle'NonNullableEnumVivid) = "vivid";
           toJSON (CreateImageRequestStyle'NonNullableEnumNatural) = "natural"}
instance Data.Aeson.Types.FromJSON.FromJSON CreateImageRequestStyle'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "vivid" -> CreateImageRequestStyle'NonNullableEnumVivid
                                             | val GHC.Classes.== "natural" -> CreateImageRequestStyle'NonNullableEnumNatural
                                             | GHC.Base.otherwise -> CreateImageRequestStyle'NonNullableOther val)}
