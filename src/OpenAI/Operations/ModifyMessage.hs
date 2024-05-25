-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation modifyMessage
module OpenAI.Operations.ModifyMessage where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified OpenAI.Common
import OpenAI.Types

-- | > POST /threads/{thread_id}/messages/{message_id}
-- 
-- Modifies a message.
modifyMessage :: forall m . OpenAI.Common.MonadHTTP m => ModifyMessageParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> ModifyMessageRequest -- ^ The request body to send
  -> OpenAI.Common.ClientT m (Network.HTTP.Client.Types.Response ModifyMessageResponse) -- ^ Monadic computation which returns the result of the operation
modifyMessage parameters
              body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ModifyMessageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ModifyMessageResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          MessageObject)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/threads/" GHC.Base.<> (OpenAI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAI.Common.textToByte GHC.Base.$ OpenAI.Common.stringifyModel (modifyMessageParametersPathThreadId parameters))) GHC.Base.<> ("/messages/" GHC.Base.<> (OpenAI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAI.Common.textToByte GHC.Base.$ OpenAI.Common.stringifyModel (modifyMessageParametersPathMessageId parameters))) GHC.Base.<> "")))) GHC.Base.mempty (GHC.Maybe.Just body) OpenAI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/threads\/{thread_id}\/messages\/{message_id}.POST.parameters@ in the specification.
-- 
-- 
data ModifyMessageParameters = ModifyMessageParameters {
  -- | pathMessage_id: Represents the parameter named \'message_id\'
  -- 
  -- The ID of the message to modify.
  modifyMessageParametersPathMessageId :: Data.Text.Internal.Text
  -- | pathThread_id: Represents the parameter named \'thread_id\'
  -- 
  -- The ID of the thread to which this message belongs.
  , modifyMessageParametersPathThreadId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ModifyMessageParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathMessage_id" Data.Aeson.Types.ToJSON..= modifyMessageParametersPathMessageId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= modifyMessageParametersPathThreadId obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathMessage_id" Data.Aeson.Types.ToJSON..= modifyMessageParametersPathMessageId obj] : ["pathThread_id" Data.Aeson.Types.ToJSON..= modifyMessageParametersPathThreadId obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ModifyMessageParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ModifyMessageParameters" (\obj -> (GHC.Base.pure ModifyMessageParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathMessage_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathThread_id"))}
-- | Create a new 'ModifyMessageParameters' with all required fields.
mkModifyMessageParameters :: Data.Text.Internal.Text -- ^ 'modifyMessageParametersPathMessageId'
  -> Data.Text.Internal.Text -- ^ 'modifyMessageParametersPathThreadId'
  -> ModifyMessageParameters
mkModifyMessageParameters modifyMessageParametersPathMessageId modifyMessageParametersPathThreadId = ModifyMessageParameters{modifyMessageParametersPathMessageId = modifyMessageParametersPathMessageId,
                                                                                                                             modifyMessageParametersPathThreadId = modifyMessageParametersPathThreadId}
-- | Represents a response of the operation 'modifyMessage'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ModifyMessageResponseError' is used.
data ModifyMessageResponse =
   ModifyMessageResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ModifyMessageResponse200 MessageObject -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)
