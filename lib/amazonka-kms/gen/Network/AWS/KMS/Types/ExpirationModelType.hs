{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.ExpirationModelType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ExpirationModelType
  ( ExpirationModelType
      ( ExpirationModelType',
        KeyMaterialExpires,
        KeyMaterialDoesNotExpire
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ExpirationModelType = ExpirationModelType' Lude.Text
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

pattern KeyMaterialExpires :: ExpirationModelType
pattern KeyMaterialExpires = ExpirationModelType' "KEY_MATERIAL_EXPIRES"

pattern KeyMaterialDoesNotExpire :: ExpirationModelType
pattern KeyMaterialDoesNotExpire = ExpirationModelType' "KEY_MATERIAL_DOES_NOT_EXPIRE"

{-# COMPLETE
  KeyMaterialExpires,
  KeyMaterialDoesNotExpire,
  ExpirationModelType'
  #-}
