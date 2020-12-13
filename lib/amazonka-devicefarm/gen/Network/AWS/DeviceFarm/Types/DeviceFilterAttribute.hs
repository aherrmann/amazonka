{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.DeviceFilterAttribute
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DeviceFilterAttribute
  ( DeviceFilterAttribute
      ( DeviceFilterAttribute',
        DFAARN,
        DFAPlatform,
        DFAOSVersion,
        DFAModel,
        DFAAvailability,
        DFAFormFactor,
        DFAManufacturer,
        DFARemoteAccessEnabled,
        DFARemoteDebugEnabled,
        DFAInstanceARN,
        DFAInstanceLabels,
        DFAFleetType
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DeviceFilterAttribute = DeviceFilterAttribute' Lude.Text
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

pattern DFAARN :: DeviceFilterAttribute
pattern DFAARN = DeviceFilterAttribute' "ARN"

pattern DFAPlatform :: DeviceFilterAttribute
pattern DFAPlatform = DeviceFilterAttribute' "PLATFORM"

pattern DFAOSVersion :: DeviceFilterAttribute
pattern DFAOSVersion = DeviceFilterAttribute' "OS_VERSION"

pattern DFAModel :: DeviceFilterAttribute
pattern DFAModel = DeviceFilterAttribute' "MODEL"

pattern DFAAvailability :: DeviceFilterAttribute
pattern DFAAvailability = DeviceFilterAttribute' "AVAILABILITY"

pattern DFAFormFactor :: DeviceFilterAttribute
pattern DFAFormFactor = DeviceFilterAttribute' "FORM_FACTOR"

pattern DFAManufacturer :: DeviceFilterAttribute
pattern DFAManufacturer = DeviceFilterAttribute' "MANUFACTURER"

pattern DFARemoteAccessEnabled :: DeviceFilterAttribute
pattern DFARemoteAccessEnabled = DeviceFilterAttribute' "REMOTE_ACCESS_ENABLED"

pattern DFARemoteDebugEnabled :: DeviceFilterAttribute
pattern DFARemoteDebugEnabled = DeviceFilterAttribute' "REMOTE_DEBUG_ENABLED"

pattern DFAInstanceARN :: DeviceFilterAttribute
pattern DFAInstanceARN = DeviceFilterAttribute' "INSTANCE_ARN"

pattern DFAInstanceLabels :: DeviceFilterAttribute
pattern DFAInstanceLabels = DeviceFilterAttribute' "INSTANCE_LABELS"

pattern DFAFleetType :: DeviceFilterAttribute
pattern DFAFleetType = DeviceFilterAttribute' "FLEET_TYPE"

{-# COMPLETE
  DFAARN,
  DFAPlatform,
  DFAOSVersion,
  DFAModel,
  DFAAvailability,
  DFAFormFactor,
  DFAManufacturer,
  DFARemoteAccessEnabled,
  DFARemoteDebugEnabled,
  DFAInstanceARN,
  DFAInstanceLabels,
  DFAFleetType,
  DeviceFilterAttribute'
  #-}
