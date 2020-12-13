{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetActivityStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetActivityStatus
  ( FleetActivityStatus
      ( FleetActivityStatus',
        Error,
        PendingFulfillment,
        PendingTermination,
        Fulfilled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype FleetActivityStatus = FleetActivityStatus' Lude.Text
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

pattern Error :: FleetActivityStatus
pattern Error = FleetActivityStatus' "error"

pattern PendingFulfillment :: FleetActivityStatus
pattern PendingFulfillment = FleetActivityStatus' "pending_fulfillment"

pattern PendingTermination :: FleetActivityStatus
pattern PendingTermination = FleetActivityStatus' "pending_termination"

pattern Fulfilled :: FleetActivityStatus
pattern Fulfilled = FleetActivityStatus' "fulfilled"

{-# COMPLETE
  Error,
  PendingFulfillment,
  PendingTermination,
  Fulfilled,
  FleetActivityStatus'
  #-}
