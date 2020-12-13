{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.DocumentationPartType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.DocumentationPartType
  ( DocumentationPartType
      ( DocumentationPartType',
        DPTAPI,
        DPTAuthorizer,
        DPTModel,
        DPTResource,
        DPTMethod,
        DPTPathParameter,
        DPTQueryParameter,
        DPTRequestHeader,
        DPTRequestBody,
        DPTResponse,
        DPTResponseHeader,
        DPTResponseBody
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DocumentationPartType = DocumentationPartType' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern DPTAPI :: DocumentationPartType
pattern DPTAPI = DocumentationPartType' "API"

pattern DPTAuthorizer :: DocumentationPartType
pattern DPTAuthorizer = DocumentationPartType' "AUTHORIZER"

pattern DPTModel :: DocumentationPartType
pattern DPTModel = DocumentationPartType' "MODEL"

pattern DPTResource :: DocumentationPartType
pattern DPTResource = DocumentationPartType' "RESOURCE"

pattern DPTMethod :: DocumentationPartType
pattern DPTMethod = DocumentationPartType' "METHOD"

pattern DPTPathParameter :: DocumentationPartType
pattern DPTPathParameter = DocumentationPartType' "PATH_PARAMETER"

pattern DPTQueryParameter :: DocumentationPartType
pattern DPTQueryParameter = DocumentationPartType' "QUERY_PARAMETER"

pattern DPTRequestHeader :: DocumentationPartType
pattern DPTRequestHeader = DocumentationPartType' "REQUEST_HEADER"

pattern DPTRequestBody :: DocumentationPartType
pattern DPTRequestBody = DocumentationPartType' "REQUEST_BODY"

pattern DPTResponse :: DocumentationPartType
pattern DPTResponse = DocumentationPartType' "RESPONSE"

pattern DPTResponseHeader :: DocumentationPartType
pattern DPTResponseHeader = DocumentationPartType' "RESPONSE_HEADER"

pattern DPTResponseBody :: DocumentationPartType
pattern DPTResponseBody = DocumentationPartType' "RESPONSE_BODY"

{-# COMPLETE
  DPTAPI,
  DPTAuthorizer,
  DPTModel,
  DPTResource,
  DPTMethod,
  DPTPathParameter,
  DPTQueryParameter,
  DPTRequestHeader,
  DPTRequestBody,
  DPTResponse,
  DPTResponseHeader,
  DPTResponseBody,
  DocumentationPartType'
  #-}
