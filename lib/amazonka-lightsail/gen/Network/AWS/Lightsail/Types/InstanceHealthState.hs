{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceHealthState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceHealthState
  ( InstanceHealthState
      ( InstanceHealthState',
        Initial,
        Healthy,
        Unhealthy,
        Unused,
        Draining,
        Unavailable
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InstanceHealthState = InstanceHealthState' Lude.Text
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

pattern Initial :: InstanceHealthState
pattern Initial = InstanceHealthState' "initial"

pattern Healthy :: InstanceHealthState
pattern Healthy = InstanceHealthState' "healthy"

pattern Unhealthy :: InstanceHealthState
pattern Unhealthy = InstanceHealthState' "unhealthy"

pattern Unused :: InstanceHealthState
pattern Unused = InstanceHealthState' "unused"

pattern Draining :: InstanceHealthState
pattern Draining = InstanceHealthState' "draining"

pattern Unavailable :: InstanceHealthState
pattern Unavailable = InstanceHealthState' "unavailable"

{-# COMPLETE
  Initial,
  Healthy,
  Unhealthy,
  Unused,
  Draining,
  Unavailable,
  InstanceHealthState'
  #-}
