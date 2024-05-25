module OpenAI.Types.ThreadObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data ThreadObject
instance Show ThreadObject
instance Eq ThreadObject
instance FromJSON ThreadObject
instance ToJSON ThreadObject
