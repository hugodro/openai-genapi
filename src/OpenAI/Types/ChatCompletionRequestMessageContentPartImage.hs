-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatCompletionRequestMessageContentPartImage
module OpenAI.Types.ChatCompletionRequestMessageContentPartImage where

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

-- | Defines the object schema located at @components.schemas.ChatCompletionRequestMessageContentPartImage@ in the specification.
-- 
-- 
data ChatCompletionRequestMessageContentPartImage = ChatCompletionRequestMessageContentPartImage {
  -- | image_url
  chatCompletionRequestMessageContentPartImageImageUrl :: ChatCompletionRequestMessageContentPartImageImageUrl'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatCompletionRequestMessageContentPartImage
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["image_url" Data.Aeson.Types.ToJSON..= chatCompletionRequestMessageContentPartImageImageUrl obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "image_url"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["image_url" Data.Aeson.Types.ToJSON..= chatCompletionRequestMessageContentPartImageImageUrl obj] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "image_url"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ChatCompletionRequestMessageContentPartImage
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatCompletionRequestMessageContentPartImage" (\obj -> GHC.Base.pure ChatCompletionRequestMessageContentPartImage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "image_url"))}
-- | Create a new 'ChatCompletionRequestMessageContentPartImage' with all required fields.
mkChatCompletionRequestMessageContentPartImage :: ChatCompletionRequestMessageContentPartImageImageUrl' -- ^ 'chatCompletionRequestMessageContentPartImageImageUrl'
  -> ChatCompletionRequestMessageContentPartImage
mkChatCompletionRequestMessageContentPartImage chatCompletionRequestMessageContentPartImageImageUrl = ChatCompletionRequestMessageContentPartImage{chatCompletionRequestMessageContentPartImageImageUrl = chatCompletionRequestMessageContentPartImageImageUrl}
-- | Defines the object schema located at @components.schemas.ChatCompletionRequestMessageContentPartImage.properties.image_url@ in the specification.
-- 
-- 
data ChatCompletionRequestMessageContentPartImageImageUrl' = ChatCompletionRequestMessageContentPartImageImageUrl' {
  -- | detail: Specifies the detail level of the image. Learn more in the [Vision guide](\/docs\/guides\/vision\/low-or-high-fidelity-image-understanding).
  chatCompletionRequestMessageContentPartImageImageUrl'Detail :: (GHC.Maybe.Maybe ChatCompletionRequestMessageContentPartImageImageUrl'Detail')
  -- | url: Either a URL of the image or the base64 encoded image data.
  , chatCompletionRequestMessageContentPartImageImageUrl'Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatCompletionRequestMessageContentPartImageImageUrl'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("detail" Data.Aeson.Types.ToJSON..=)) (chatCompletionRequestMessageContentPartImageImageUrl'Detail obj) : ["url" Data.Aeson.Types.ToJSON..= chatCompletionRequestMessageContentPartImageImageUrl'Url obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("detail" Data.Aeson.Types.ToJSON..=)) (chatCompletionRequestMessageContentPartImageImageUrl'Detail obj) : ["url" Data.Aeson.Types.ToJSON..= chatCompletionRequestMessageContentPartImageImageUrl'Url obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ChatCompletionRequestMessageContentPartImageImageUrl'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatCompletionRequestMessageContentPartImageImageUrl'" (\obj -> (GHC.Base.pure ChatCompletionRequestMessageContentPartImageImageUrl' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "detail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'ChatCompletionRequestMessageContentPartImageImageUrl'' with all required fields.
mkChatCompletionRequestMessageContentPartImageImageUrl' :: Data.Text.Internal.Text -- ^ 'chatCompletionRequestMessageContentPartImageImageUrl'Url'
  -> ChatCompletionRequestMessageContentPartImageImageUrl'
mkChatCompletionRequestMessageContentPartImageImageUrl' chatCompletionRequestMessageContentPartImageImageUrl'Url = ChatCompletionRequestMessageContentPartImageImageUrl'{chatCompletionRequestMessageContentPartImageImageUrl'Detail = GHC.Maybe.Nothing,
                                                                                                                                                                         chatCompletionRequestMessageContentPartImageImageUrl'Url = chatCompletionRequestMessageContentPartImageImageUrl'Url}
-- | Defines the enum schema located at @components.schemas.ChatCompletionRequestMessageContentPartImage.properties.image_url.properties.detail@ in the specification.
-- 
-- Specifies the detail level of the image. Learn more in the [Vision guide](\/docs\/guides\/vision\/low-or-high-fidelity-image-understanding).
data ChatCompletionRequestMessageContentPartImageImageUrl'Detail' =
   ChatCompletionRequestMessageContentPartImageImageUrl'Detail'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ChatCompletionRequestMessageContentPartImageImageUrl'Detail'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumAuto -- ^ Represents the JSON value @"auto"@
  | ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumLow -- ^ Represents the JSON value @"low"@
  | ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumHigh -- ^ Represents the JSON value @"high"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatCompletionRequestMessageContentPartImageImageUrl'Detail'
    where {toJSON (ChatCompletionRequestMessageContentPartImageImageUrl'Detail'Other val) = val;
           toJSON (ChatCompletionRequestMessageContentPartImageImageUrl'Detail'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumAuto) = "auto";
           toJSON (ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumLow) = "low";
           toJSON (ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumHigh) = "high"}
instance Data.Aeson.Types.FromJSON.FromJSON ChatCompletionRequestMessageContentPartImageImageUrl'Detail'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "auto" -> ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumAuto
                                             | val GHC.Classes.== "low" -> ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumLow
                                             | val GHC.Classes.== "high" -> ChatCompletionRequestMessageContentPartImageImageUrl'Detail'EnumHigh
                                             | GHC.Base.otherwise -> ChatCompletionRequestMessageContentPartImageImageUrl'Detail'Other val)}