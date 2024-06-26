-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ListMessagesResponse
module OpenAI.Types.ListMessagesResponse where

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
import {-# SOURCE #-} OpenAI.Types.MessageObject

-- | Defines the object schema located at @components.schemas.ListMessagesResponse@ in the specification.
-- 
-- 
data ListMessagesResponse = ListMessagesResponse {
  -- | data
  listMessagesResponseData :: ([MessageObject])
  -- | first_id
  , listMessagesResponseFirstId :: Data.Text.Internal.Text
  -- | has_more
  , listMessagesResponseHasMore :: GHC.Types.Bool
  -- | last_id
  , listMessagesResponseLastId :: Data.Text.Internal.Text
  -- | object
  , listMessagesResponseObject :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ListMessagesResponse
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listMessagesResponseData obj] : ["first_id" Data.Aeson.Types.ToJSON..= listMessagesResponseFirstId obj] : ["has_more" Data.Aeson.Types.ToJSON..= listMessagesResponseHasMore obj] : ["last_id" Data.Aeson.Types.ToJSON..= listMessagesResponseLastId obj] : ["object" Data.Aeson.Types.ToJSON..= listMessagesResponseObject obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= listMessagesResponseData obj] : ["first_id" Data.Aeson.Types.ToJSON..= listMessagesResponseFirstId obj] : ["has_more" Data.Aeson.Types.ToJSON..= listMessagesResponseHasMore obj] : ["last_id" Data.Aeson.Types.ToJSON..= listMessagesResponseLastId obj] : ["object" Data.Aeson.Types.ToJSON..= listMessagesResponseObject obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ListMessagesResponse
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ListMessagesResponse" (\obj -> ((((GHC.Base.pure ListMessagesResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "first_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))}
-- | Create a new 'ListMessagesResponse' with all required fields.
mkListMessagesResponse :: [MessageObject] -- ^ 'listMessagesResponseData'
  -> Data.Text.Internal.Text -- ^ 'listMessagesResponseFirstId'
  -> GHC.Types.Bool -- ^ 'listMessagesResponseHasMore'
  -> Data.Text.Internal.Text -- ^ 'listMessagesResponseLastId'
  -> Data.Text.Internal.Text -- ^ 'listMessagesResponseObject'
  -> ListMessagesResponse
mkListMessagesResponse listMessagesResponseData listMessagesResponseFirstId listMessagesResponseHasMore listMessagesResponseLastId listMessagesResponseObject = ListMessagesResponse{listMessagesResponseData = listMessagesResponseData,
                                                                                                                                                                                     listMessagesResponseFirstId = listMessagesResponseFirstId,
                                                                                                                                                                                     listMessagesResponseHasMore = listMessagesResponseHasMore,
                                                                                                                                                                                     listMessagesResponseLastId = listMessagesResponseLastId,
                                                                                                                                                                                     listMessagesResponseObject = listMessagesResponseObject}
