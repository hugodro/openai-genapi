module OpenAI.Types.MessageFileObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data MessageFileObject
instance Show MessageFileObject
instance Eq MessageFileObject
instance FromJSON MessageFileObject
instance ToJSON MessageFileObject
