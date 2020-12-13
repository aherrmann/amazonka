{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.BulkDeploymentStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.BulkDeploymentStatus
  ( BulkDeploymentStatus
      ( BulkDeploymentStatus',
        Initializing,
        Running,
        Completed,
        Stopping,
        Stopped,
        Failed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | The current status of the bulk deployment.
newtype BulkDeploymentStatus = BulkDeploymentStatus' Lude.Text
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

pattern Initializing :: BulkDeploymentStatus
pattern Initializing = BulkDeploymentStatus' "Initializing"

pattern Running :: BulkDeploymentStatus
pattern Running = BulkDeploymentStatus' "Running"

pattern Completed :: BulkDeploymentStatus
pattern Completed = BulkDeploymentStatus' "Completed"

pattern Stopping :: BulkDeploymentStatus
pattern Stopping = BulkDeploymentStatus' "Stopping"

pattern Stopped :: BulkDeploymentStatus
pattern Stopped = BulkDeploymentStatus' "Stopped"

pattern Failed :: BulkDeploymentStatus
pattern Failed = BulkDeploymentStatus' "Failed"

{-# COMPLETE
  Initializing,
  Running,
  Completed,
  Stopping,
  Stopped,
  Failed,
  BulkDeploymentStatus'
  #-}
