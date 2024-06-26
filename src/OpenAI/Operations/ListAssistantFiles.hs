-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation listAssistantFiles
module OpenAI.Operations.ListAssistantFiles where

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

-- | > GET /assistants/{assistant_id}/files
--
-- Returns a list of assistant files.
listAssistantFiles :: forall m . OpenAI.Common.MonadHTTP m => ListAssistantFilesParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> OpenAI.Common.ClientT m (Network.HTTP.Client.Types.Response ListAssistantFilesOpResponse) -- ^ Monadic computation which returns the result of the operation
listAssistantFiles parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ListAssistantFilesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ListAssistantFilesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               ListAssistantFilesResponse)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/assistants/" GHC.Base.<> (OpenAI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAI.Common.textToByte GHC.Base.$ OpenAI.Common.stringifyModel (listAssistantFilesParametersPathAssistantId parameters))) GHC.Base.<> "/files")) [OpenAI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listAssistantFilesParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               OpenAI.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listAssistantFilesParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               OpenAI.Common.QueryParameter (Data.Text.Internal.pack "after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listAssistantFilesParametersQueryAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               OpenAI.Common.QueryParameter (Data.Text.Internal.pack "before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listAssistantFilesParametersQueryBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/assistants\/{assistant_id}\/files.GET.parameters@ in the specification.
--
--
data ListAssistantFilesParameters = ListAssistantFilesParameters {
  -- | pathAssistant_id: Represents the parameter named \'assistant_id\'
  --
  -- The ID of the assistant the file belongs to.
  listAssistantFilesParametersPathAssistantId :: Data.Text.Internal.Text
  -- | queryAfter: Represents the parameter named \'after\'
  --
  -- A cursor for use in pagination. \`after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.
  , listAssistantFilesParametersQueryAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryBefore: Represents the parameter named \'before\'
  --
  -- A cursor for use in pagination. \`before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.
  , listAssistantFilesParametersQueryBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryLimit: Represents the parameter named \'limit\'
  --
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.
  , listAssistantFilesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryOrder: Represents the parameter named \'order\'
  --
  -- Sort order by the \`created_at\` timestamp of the objects. \`asc\` for ascending order and \`desc\` for descending order.
  , listAssistantFilesParametersQueryOrder :: (GHC.Maybe.Maybe ListAssistantFilesParametersQueryOrder')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListAssistantFilesParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAssistant_id" Data.Aeson.Types.ToJSON..= listAssistantFilesParametersPathAssistantId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAfter" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBefore" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryOrder obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAssistant_id" Data.Aeson.Types.ToJSON..= listAssistantFilesParametersPathAssistantId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAfter" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBefore" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (listAssistantFilesParametersQueryOrder obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ListAssistantFilesParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ListAssistantFilesParameters" (\obj -> ((((GHC.Base.pure ListAssistantFilesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAssistant_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAfter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryBefore")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrder"))}
-- | Create a new 'ListAssistantFilesParameters' with all required fields.
mkListAssistantFilesParameters :: Data.Text.Internal.Text -- ^ 'listAssistantFilesParametersPathAssistantId'
  -> ListAssistantFilesParameters
mkListAssistantFilesParameters listAssistantFilesParametersPathAssistantId = ListAssistantFilesParameters{listAssistantFilesParametersPathAssistantId = listAssistantFilesParametersPathAssistantId,
                                                                                                          listAssistantFilesParametersQueryAfter = GHC.Maybe.Nothing,
                                                                                                          listAssistantFilesParametersQueryBefore = GHC.Maybe.Nothing,
                                                                                                          listAssistantFilesParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                          listAssistantFilesParametersQueryOrder = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/assistants\/{assistant_id}\/files.GET.parameters.properties.queryOrder@ in the specification.
--
-- Represents the parameter named \'order\'
--
-- Sort order by the \`created_at\` timestamp of the objects. \`asc\` for ascending order and \`desc\` for descending order.
data ListAssistantFilesParametersQueryOrder' =
   ListAssistantFilesParametersQueryOrder'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ListAssistantFilesParametersQueryOrder'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ListAssistantFilesParametersQueryOrder'EnumAsc -- ^ Represents the JSON value @"asc"@
  | ListAssistantFilesParametersQueryOrder'EnumDesc -- ^ Represents the JSON value @"desc"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListAssistantFilesParametersQueryOrder'
    where {toJSON (ListAssistantFilesParametersQueryOrder'Other val) = val;
           toJSON (ListAssistantFilesParametersQueryOrder'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ListAssistantFilesParametersQueryOrder'EnumAsc) = "asc";
           toJSON (ListAssistantFilesParametersQueryOrder'EnumDesc) = "desc"}
instance Data.Aeson.Types.FromJSON.FromJSON ListAssistantFilesParametersQueryOrder'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "asc" -> ListAssistantFilesParametersQueryOrder'EnumAsc
                                             | val GHC.Classes.== "desc" -> ListAssistantFilesParametersQueryOrder'EnumDesc
                                             | GHC.Base.otherwise -> ListAssistantFilesParametersQueryOrder'Other val)}
-- | Represents a response of the operation 'listAssistantFiles'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ListAssistantFilesResponseError' is used.
data ListAssistantFilesOpResponse =
   ListAssistantFilesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ListAssistantFilesResponse200 ListAssistantFilesResponse -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)
