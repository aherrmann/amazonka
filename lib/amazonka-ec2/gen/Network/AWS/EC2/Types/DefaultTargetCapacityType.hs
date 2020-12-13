{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DefaultTargetCapacityType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DefaultTargetCapacityType
  ( DefaultTargetCapacityType
      ( DefaultTargetCapacityType',
        DTCTSpot,
        DTCTOnDemand
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DefaultTargetCapacityType = DefaultTargetCapacityType' Lude.Text
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

pattern DTCTSpot :: DefaultTargetCapacityType
pattern DTCTSpot = DefaultTargetCapacityType' "spot"

pattern DTCTOnDemand :: DefaultTargetCapacityType
pattern DTCTOnDemand = DefaultTargetCapacityType' "on-demand"

{-# COMPLETE
  DTCTSpot,
  DTCTOnDemand,
  DefaultTargetCapacityType'
  #-}
