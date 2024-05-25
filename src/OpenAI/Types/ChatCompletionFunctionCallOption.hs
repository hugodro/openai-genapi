-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatCompletionFunctionCallOption
module OpenAI.Types.ChatCompletionFunctionCallOption where

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

-- | Defines the object schema located at @components.schemas.ChatCompletionFunctionCallOption@ in the specification.
-- 
-- Specifying a particular function via \`{\"name\": \"my_function\"}\` forces the model to call that function.
data ChatCompletionFunctionCallOption = ChatCompletionFunctionCallOption {
  -- | name: The name of the function to call.
  chatCompletionFunctionCallOptionName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatCompletionFunctionCallOption
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["name" Data.Aeson.Types.ToJSON..= chatCompletionFunctionCallOptionName obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["name" Data.Aeson.Types.ToJSON..= chatCompletionFunctionCallOptionName obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ChatCompletionFunctionCallOption
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatCompletionFunctionCallOption" (\obj -> GHC.Base.pure ChatCompletionFunctionCallOption GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))}
-- | Create a new 'ChatCompletionFunctionCallOption' with all required fields.
mkChatCompletionFunctionCallOption :: Data.Text.Internal.Text -- ^ 'chatCompletionFunctionCallOptionName'
  -> ChatCompletionFunctionCallOption
mkChatCompletionFunctionCallOption chatCompletionFunctionCallOptionName = ChatCompletionFunctionCallOption{chatCompletionFunctionCallOptionName = chatCompletionFunctionCallOptionName}
