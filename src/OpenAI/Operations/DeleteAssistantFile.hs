-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deleteAssistantFile
module OpenAI.Operations.DeleteAssistantFile where

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

-- | > DELETE /assistants/{assistant_id}/files/{file_id}
--
-- Delete an assistant file.
deleteAssistantFile :: forall m . OpenAI.Common.MonadHTTP m => DeleteAssistantFileParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> OpenAI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteAssistantFileOpResponse) -- ^ Monadic computation which returns the result of the operation
deleteAssistantFile parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteAssistantFileResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteAssistantFileResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  DeleteAssistantFileResponse)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (OpenAI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "DELETE") ("/assistants/" GHC.Base.<> (OpenAI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAI.Common.textToByte GHC.Base.$ OpenAI.Common.stringifyModel (deleteAssistantFileParametersPathAssistantId parameters))) GHC.Base.<> ("/files/" GHC.Base.<> (OpenAI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (OpenAI.Common.textToByte GHC.Base.$ OpenAI.Common.stringifyModel (deleteAssistantFileParametersPathFileId parameters))) GHC.Base.<> "")))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/assistants\/{assistant_id}\/files\/{file_id}.DELETE.parameters@ in the specification.
--
--
data DeleteAssistantFileParameters = DeleteAssistantFileParameters {
  -- | pathAssistant_id: Represents the parameter named \'assistant_id\'
  --
  -- The ID of the assistant that the file belongs to.
  deleteAssistantFileParametersPathAssistantId :: Data.Text.Internal.Text
  -- | pathFile_id: Represents the parameter named \'file_id\'
  --
  -- The ID of the file to delete.
  , deleteAssistantFileParametersPathFileId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteAssistantFileParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAssistant_id" Data.Aeson.Types.ToJSON..= deleteAssistantFileParametersPathAssistantId obj] : ["pathFile_id" Data.Aeson.Types.ToJSON..= deleteAssistantFileParametersPathFileId obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAssistant_id" Data.Aeson.Types.ToJSON..= deleteAssistantFileParametersPathAssistantId obj] : ["pathFile_id" Data.Aeson.Types.ToJSON..= deleteAssistantFileParametersPathFileId obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON DeleteAssistantFileParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteAssistantFileParameters" (\obj -> (GHC.Base.pure DeleteAssistantFileParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAssistant_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathFile_id"))}
-- | Create a new 'DeleteAssistantFileParameters' with all required fields.
mkDeleteAssistantFileParameters :: Data.Text.Internal.Text -- ^ 'deleteAssistantFileParametersPathAssistantId'
  -> Data.Text.Internal.Text -- ^ 'deleteAssistantFileParametersPathFileId'
  -> DeleteAssistantFileParameters
mkDeleteAssistantFileParameters deleteAssistantFileParametersPathAssistantId deleteAssistantFileParametersPathFileId = DeleteAssistantFileParameters{deleteAssistantFileParametersPathAssistantId = deleteAssistantFileParametersPathAssistantId,
                                                                                                                                                     deleteAssistantFileParametersPathFileId = deleteAssistantFileParametersPathFileId}
-- | Represents a response of the operation 'deleteAssistantFile'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteAssistantFileResponseError' is used.
data DeleteAssistantFileOpResponse =
   DeleteAssistantFileResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeleteAssistantFileResponse200 DeleteAssistantFileResponse -- ^ OK
  deriving (GHC.Show.Show, GHC.Classes.Eq)