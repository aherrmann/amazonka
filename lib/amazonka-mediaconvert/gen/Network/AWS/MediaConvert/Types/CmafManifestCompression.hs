{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmafManifestCompression
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafManifestCompression
  ( CmafManifestCompression
      ( CmafManifestCompression',
        Gzip,
        None
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | When set to GZIP, compresses HLS playlist.
newtype CmafManifestCompression = CmafManifestCompression' Lude.Text
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

pattern Gzip :: CmafManifestCompression
pattern Gzip = CmafManifestCompression' "GZIP"

pattern None :: CmafManifestCompression
pattern None = CmafManifestCompression' "NONE"

{-# COMPLETE
  Gzip,
  None,
  CmafManifestCompression'
  #-}
