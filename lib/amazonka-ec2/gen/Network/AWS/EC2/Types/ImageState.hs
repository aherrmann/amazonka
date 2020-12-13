{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImageState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageState
  ( ImageState
      ( ImageState',
        ISPending,
        ISAvailable,
        ISInvalid,
        ISDeregistered,
        ISTransient,
        ISFailed,
        ISError
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ImageState = ImageState' Lude.Text
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

pattern ISPending :: ImageState
pattern ISPending = ImageState' "pending"

pattern ISAvailable :: ImageState
pattern ISAvailable = ImageState' "available"

pattern ISInvalid :: ImageState
pattern ISInvalid = ImageState' "invalid"

pattern ISDeregistered :: ImageState
pattern ISDeregistered = ImageState' "deregistered"

pattern ISTransient :: ImageState
pattern ISTransient = ImageState' "transient"

pattern ISFailed :: ImageState
pattern ISFailed = ImageState' "failed"

pattern ISError :: ImageState
pattern ISError = ImageState' "error"

{-# COMPLETE
  ISPending,
  ISAvailable,
  ISInvalid,
  ISDeregistered,
  ISTransient,
  ISFailed,
  ISError,
  ImageState'
  #-}
