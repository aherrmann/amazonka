{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.SSLProtocol
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.SSLProtocol
  ( SSLProtocol
      ( SSLProtocol',
        SPSSLV3,
        SPTLSV1,
        SPTLSV1_1,
        SPTLSV1_2
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SSLProtocol = SSLProtocol' Lude.Text
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

pattern SPSSLV3 :: SSLProtocol
pattern SPSSLV3 = SSLProtocol' "SSLv3"

pattern SPTLSV1 :: SSLProtocol
pattern SPTLSV1 = SSLProtocol' "TLSv1"

pattern SPTLSV1_1 :: SSLProtocol
pattern SPTLSV1_1 = SSLProtocol' "TLSv1.1"

pattern SPTLSV1_2 :: SSLProtocol
pattern SPTLSV1_2 = SSLProtocol' "TLSv1.2"

{-# COMPLETE
  SPSSLV3,
  SPTLSV1,
  SPTLSV1_1,
  SPTLSV1_2,
  SSLProtocol'
  #-}
