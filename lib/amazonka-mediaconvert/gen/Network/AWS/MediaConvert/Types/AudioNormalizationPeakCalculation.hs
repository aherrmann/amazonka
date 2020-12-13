{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioNormalizationPeakCalculation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioNormalizationPeakCalculation
  ( AudioNormalizationPeakCalculation
      ( AudioNormalizationPeakCalculation',
        ANPCTruePeak,
        ANPCNone
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.
newtype AudioNormalizationPeakCalculation = AudioNormalizationPeakCalculation' Lude.Text
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

pattern ANPCTruePeak :: AudioNormalizationPeakCalculation
pattern ANPCTruePeak = AudioNormalizationPeakCalculation' "TRUE_PEAK"

pattern ANPCNone :: AudioNormalizationPeakCalculation
pattern ANPCNone = AudioNormalizationPeakCalculation' "NONE"

{-# COMPLETE
  ANPCTruePeak,
  ANPCNone,
  AudioNormalizationPeakCalculation'
  #-}
