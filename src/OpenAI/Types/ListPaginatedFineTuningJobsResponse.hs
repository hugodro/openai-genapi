-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ListPaginatedFineTuningJobsResponse
module OpenAI.Types.ListPaginatedFineTuningJobsResponse where

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
import {-# SOURCE #-} OpenAI.Types.FineTuningJob

-- | Defines the object schema located at @components.schemas.ListPaginatedFineTuningJobsResponse@ in the specification.
-- 
-- 
data ListPaginatedFineTuningJobsResponse = ListPaginatedFineTuningJobsResponse {
  -- | data
  listPaginatedFineTuningJobsResponseData :: ([FineTuningJob])
  -- | has_more
  , listPaginatedFineTuningJobsResponseHasMore :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListPaginatedFineTuningJobsResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listPaginatedFineTuningJobsResponseData obj] : ["has_more" Data.Aeson.Types.ToJSON..= listPaginatedFineTuningJobsResponseHasMore obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listPaginatedFineTuningJobsResponseData obj] : ["has_more" Data.Aeson.Types.ToJSON..= listPaginatedFineTuningJobsResponseHasMore obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ListPaginatedFineTuningJobsResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ListPaginatedFineTuningJobsResponse" (\obj -> (GHC.Base.pure ListPaginatedFineTuningJobsResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more"))}
-- | Create a new 'ListPaginatedFineTuningJobsResponse' with all required fields.
mkListPaginatedFineTuningJobsResponse :: [FineTuningJob] -- ^ 'listPaginatedFineTuningJobsResponseData'
  -> GHC.Types.Bool -- ^ 'listPaginatedFineTuningJobsResponseHasMore'
  -> ListPaginatedFineTuningJobsResponse
mkListPaginatedFineTuningJobsResponse listPaginatedFineTuningJobsResponseData listPaginatedFineTuningJobsResponseHasMore = ListPaginatedFineTuningJobsResponse{listPaginatedFineTuningJobsResponseData = listPaginatedFineTuningJobsResponseData,
                                                                                                                                                               listPaginatedFineTuningJobsResponseHasMore = listPaginatedFineTuningJobsResponseHasMore}
