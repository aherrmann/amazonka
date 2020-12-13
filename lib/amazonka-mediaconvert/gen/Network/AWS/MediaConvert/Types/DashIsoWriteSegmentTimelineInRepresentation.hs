{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DashIsoWriteSegmentTimelineInRepresentation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoWriteSegmentTimelineInRepresentation
  ( DashIsoWriteSegmentTimelineInRepresentation
      ( DashIsoWriteSegmentTimelineInRepresentation',
        DIWSTIREnabled,
        DIWSTIRDisabled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | When you enable Precise segment duration in manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
newtype DashIsoWriteSegmentTimelineInRepresentation = DashIsoWriteSegmentTimelineInRepresentation' Lude.Text
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

pattern DIWSTIREnabled :: DashIsoWriteSegmentTimelineInRepresentation
pattern DIWSTIREnabled = DashIsoWriteSegmentTimelineInRepresentation' "ENABLED"

pattern DIWSTIRDisabled :: DashIsoWriteSegmentTimelineInRepresentation
pattern DIWSTIRDisabled = DashIsoWriteSegmentTimelineInRepresentation' "DISABLED"

{-# COMPLETE
  DIWSTIREnabled,
  DIWSTIRDisabled,
  DashIsoWriteSegmentTimelineInRepresentation'
  #-}
