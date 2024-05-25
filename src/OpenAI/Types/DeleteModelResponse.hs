-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DeleteModelResponse
module OpenAI.Types.DeleteModelResponse where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified OpenAI.Common
import OpenAI.TypeAlias

-- | Defines the object schema located at @components.schemas.DeleteModelResponse@ in the specification.
-- 
-- 
data DeleteModelResponse = DeleteModelResponse {
  -- | deleted
  deleteModelResponseDeleted :: GHC.Types.Bool
  -- | id
  , deleteModelResponseId :: Data.Text.Internal.Text
  -- | object
  , deleteModelResponseObject :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteModelResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["deleted" Data.Aeson.Types.ToJSON..= deleteModelResponseDeleted obj] : ["id" Data.Aeson.Types.ToJSON..= deleteModelResponseId obj] : ["object" Data.Aeson.Types.ToJSON..= deleteModelResponseObject obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["deleted" Data.Aeson.Types.ToJSON..= deleteModelResponseDeleted obj] : ["id" Data.Aeson.Types.ToJSON..= deleteModelResponseId obj] : ["object" Data.Aeson.Types.ToJSON..= deleteModelResponseObject obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON DeleteModelResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteModelResponse" (\obj -> ((GHC.Base.pure DeleteModelResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))}
-- | Create a new 'DeleteModelResponse' with all required fields.
mkDeleteModelResponse :: GHC.Types.Bool -- ^ 'deleteModelResponseDeleted'
  -> Data.Text.Internal.Text -- ^ 'deleteModelResponseId'
  -> Data.Text.Internal.Text -- ^ 'deleteModelResponseObject'
  -> DeleteModelResponse
mkDeleteModelResponse deleteModelResponseDeleted deleteModelResponseId deleteModelResponseObject = DeleteModelResponse{deleteModelResponseDeleted = deleteModelResponseDeleted,
                                                                                                                       deleteModelResponseId = deleteModelResponseId,
                                                                                                                       deleteModelResponseObject = deleteModelResponseObject}
