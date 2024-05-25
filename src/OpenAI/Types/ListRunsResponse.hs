-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ListRunsResponse
module OpenAI.Types.ListRunsResponse where

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
import {-# SOURCE #-} OpenAI.Types.RunObject

-- | Defines the object schema located at @components.schemas.ListRunsResponse@ in the specification.
-- 
-- 
data ListRunsResponse = ListRunsResponse {
  -- | data
  listRunsResponseData :: ([RunObject])
  -- | first_id
  , listRunsResponseFirstId :: Data.Text.Internal.Text
  -- | has_more
  , listRunsResponseHasMore :: GHC.Types.Bool
  -- | last_id
  , listRunsResponseLastId :: Data.Text.Internal.Text
  -- | object
  , listRunsResponseObject :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListRunsResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listRunsResponseData obj] : ["first_id" Data.Aeson.Types.ToJSON..= listRunsResponseFirstId obj] : ["has_more" Data.Aeson.Types.ToJSON..= listRunsResponseHasMore obj] : ["last_id" Data.Aeson.Types.ToJSON..= listRunsResponseLastId obj] : ["object" Data.Aeson.Types.ToJSON..= listRunsResponseObject obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listRunsResponseData obj] : ["first_id" Data.Aeson.Types.ToJSON..= listRunsResponseFirstId obj] : ["has_more" Data.Aeson.Types.ToJSON..= listRunsResponseHasMore obj] : ["last_id" Data.Aeson.Types.ToJSON..= listRunsResponseLastId obj] : ["object" Data.Aeson.Types.ToJSON..= listRunsResponseObject obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ListRunsResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ListRunsResponse" (\obj -> ((((GHC.Base.pure ListRunsResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "first_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))}
-- | Create a new 'ListRunsResponse' with all required fields.
mkListRunsResponse :: [RunObject] -- ^ 'listRunsResponseData'
  -> Data.Text.Internal.Text -- ^ 'listRunsResponseFirstId'
  -> GHC.Types.Bool -- ^ 'listRunsResponseHasMore'
  -> Data.Text.Internal.Text -- ^ 'listRunsResponseLastId'
  -> Data.Text.Internal.Text -- ^ 'listRunsResponseObject'
  -> ListRunsResponse
mkListRunsResponse listRunsResponseData listRunsResponseFirstId listRunsResponseHasMore listRunsResponseLastId listRunsResponseObject = ListRunsResponse{listRunsResponseData = listRunsResponseData,
                                                                                                                                                         listRunsResponseFirstId = listRunsResponseFirstId,
                                                                                                                                                         listRunsResponseHasMore = listRunsResponseHasMore,
                                                                                                                                                         listRunsResponseLastId = listRunsResponseLastId,
                                                                                                                                                         listRunsResponseObject = listRunsResponseObject}
