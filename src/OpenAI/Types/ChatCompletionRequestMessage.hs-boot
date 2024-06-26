module OpenAI.Types.ChatCompletionRequestMessage where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data ChatCompletionRequestMessageVariants
instance Show ChatCompletionRequestMessageVariants
instance Eq ChatCompletionRequestMessageVariants
instance FromJSON ChatCompletionRequestMessageVariants
instance ToJSON ChatCompletionRequestMessageVariants
type ChatCompletionRequestMessage = ChatCompletionRequestMessageVariants
