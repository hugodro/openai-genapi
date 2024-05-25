module OpenAI.Types.AssistantFileObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data AssistantFileObject
instance Show AssistantFileObject
instance Eq AssistantFileObject
instance FromJSON AssistantFileObject
instance ToJSON AssistantFileObject
