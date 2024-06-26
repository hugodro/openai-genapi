-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation listMessages
module OpenAI.Operations.ListMessages where

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

-- | > GET /threads/{thread_id}/messages
--
-- Returns a list of messages for a given thread.
listMessages :: forall m . OpenAI.Common.MonadHTTP m => ListMessagesParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> OpenAI.Common.ClientT m (Network.HTTP.Client.Types.Response ListMessagesOpResponse) -- ^ Monadic computation which returns the result of the operation
listMessages parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ListMessagesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ListMessagesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             ListMessagesResponse)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/threads/" GHC.Base.<> (OpenAI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAI.Common.textToByte GHC.Base.$ OpenAI.Common.stringifyModel (listMessagesParametersPathThreadId parameters))) GHC.Base.<> "/messages")) [OpenAI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessagesParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OpenAI.Common.QueryParameter (Data.Text.Internal.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessagesParametersQueryOrder parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OpenAI.Common.QueryParameter (Data.Text.Internal.pack "after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessagesParametersQueryAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OpenAI.Common.QueryParameter (Data.Text.Internal.pack "before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> listMessagesParametersQueryBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/threads\/{thread_id}\/messages.GET.parameters@ in the specification.
--
--
data ListMessagesParameters = ListMessagesParameters {
  -- | pathThread_id: Represents the parameter named \'thread_id\'
  --
  -- The ID of the [thread](\/docs\/api-reference\/threads) the messages belong to.
  listMessagesParametersPathThreadId :: Data.Text.Internal.Text
  -- | queryAfter: Represents the parameter named \'after\'
  --
  -- A cursor for use in pagination. \`after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include after=obj_foo in order to fetch the next page of the list.
  , listMessagesParametersQueryAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryBefore: Represents the parameter named \'before\'
  --
  -- A cursor for use in pagination. \`before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with obj_foo, your subsequent call can include before=obj_foo in order to fetch the previous page of the list.
  , listMessagesParametersQueryBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryLimit: Represents the parameter named \'limit\'
  --
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 20.
  , listMessagesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryOrder: Represents the parameter named \'order\'
  --
  -- Sort order by the \`created_at\` timestamp of the objects. \`asc\` for ascending order and \`desc\` for descending order.
  , listMessagesParametersQueryOrder :: (GHC.Maybe.Maybe ListMessagesParametersQueryOrder')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListMessagesParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathThread_id" Data.Aeson.Types.ToJSON..= listMessagesParametersPathThreadId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAfter" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBefore" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryOrder obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathThread_id" Data.Aeson.Types.ToJSON..= listMessagesParametersPathThreadId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAfter" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBefore" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrder" Data.Aeson.Types.ToJSON..=)) (listMessagesParametersQueryOrder obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ListMessagesParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ListMessagesParameters" (\obj -> ((((GHC.Base.pure ListMessagesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathThread_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAfter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryBefore")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrder"))}
-- | Create a new 'ListMessagesParameters' with all required fields.
mkListMessagesParameters :: Data.Text.Internal.Text -- ^ 'listMessagesParametersPathThreadId'
  -> ListMessagesParameters
mkListMessagesParameters listMessagesParametersPathThreadId = ListMessagesParameters{listMessagesParametersPathThreadId = listMessagesParametersPathThreadId,
                                                                                     listMessagesParametersQueryAfter = GHC.Maybe.Nothing,
                                                                                     listMessagesParametersQueryBefore = GHC.Maybe.Nothing,
                                                                                     listMessagesParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                     listMessagesParametersQueryOrder = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/threads\/{thread_id}\/messages.GET.parameters.properties.queryOrder@ in the specification.
--
-- Represents the parameter named \'order\'
--
-- Sort order by the \`created_at\` timestamp of the objects. \`asc\` for ascending order and \`desc\` for descending order.
data ListMessagesParametersQueryOrder' =
   ListMessagesParametersQueryOrder'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ListMessagesParametersQueryOrder'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ListMessagesParametersQueryOrder'EnumAsc -- ^ Represents the JSON value @"asc"@
  | ListMessagesParametersQueryOrder'EnumDesc -- ^ Represents the JSON value @"desc"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListMessagesParametersQueryOrder'
    where {toJSON (ListMessagesParametersQueryOrder'Other val) = val;
           toJSON (ListMessagesParametersQueryOrder'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ListMessagesParametersQueryOrder'EnumAsc) = "asc";
           toJSON (ListMessagesParametersQueryOrder'EnumDesc) = "desc"}
instance Data.Aeson.Types.FromJSON.FromJSON ListMessagesParametersQueryOrder'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "asc" -> ListMessagesParametersQueryOrder'EnumAsc
                                             | val GHC.Classes.== "desc" -> ListMessagesParametersQueryOrder'EnumDesc
                                             | GHC.Base.otherwise -> ListMessagesParametersQueryOrder'Other val)}
-- | Represents a response of the operation 'listMessages'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ListMessagesResponseError' is used.
data ListMessagesOpResponse =
   ListMessagesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ListMessagesResponse200 ListMessagesResponse -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)
