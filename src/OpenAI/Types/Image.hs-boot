module OpenAI.Types.Image where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data Image
instance Show Image
instance Eq Image
instance FromJSON Image
instance ToJSON Image
