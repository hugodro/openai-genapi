module OpenAI.Types.FunctionObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified OpenAI.Common
data FunctionObject
instance Show FunctionObject
instance Eq FunctionObject
instance FromJSON FunctionObject
instance ToJSON FunctionObject
