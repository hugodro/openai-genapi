module OpenAI.Types.CompletionUsage where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data CompletionUsage
instance Show CompletionUsage
instance Eq CompletionUsage
instance FromJSON CompletionUsage
instance ToJSON CompletionUsage
