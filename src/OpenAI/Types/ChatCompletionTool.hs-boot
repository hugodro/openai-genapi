module OpenAI.Types.ChatCompletionTool where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data ChatCompletionTool
instance Show ChatCompletionTool
instance Eq ChatCompletionTool
instance FromJSON ChatCompletionTool
instance ToJSON ChatCompletionTool
