{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.InstanceInformationFilterKey
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InstanceInformationFilterKey
  ( InstanceInformationFilterKey
      ( InstanceInformationFilterKey',
        InstanceIds,
        AgentVersion,
        PingStatus,
        PlatformTypes,
        ActivationIds,
        IAMRole,
        ResourceType,
        AssociationStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InstanceInformationFilterKey = InstanceInformationFilterKey' Lude.Text
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

pattern InstanceIds :: InstanceInformationFilterKey
pattern InstanceIds = InstanceInformationFilterKey' "InstanceIds"

pattern AgentVersion :: InstanceInformationFilterKey
pattern AgentVersion = InstanceInformationFilterKey' "AgentVersion"

pattern PingStatus :: InstanceInformationFilterKey
pattern PingStatus = InstanceInformationFilterKey' "PingStatus"

pattern PlatformTypes :: InstanceInformationFilterKey
pattern PlatformTypes = InstanceInformationFilterKey' "PlatformTypes"

pattern ActivationIds :: InstanceInformationFilterKey
pattern ActivationIds = InstanceInformationFilterKey' "ActivationIds"

pattern IAMRole :: InstanceInformationFilterKey
pattern IAMRole = InstanceInformationFilterKey' "IamRole"

pattern ResourceType :: InstanceInformationFilterKey
pattern ResourceType = InstanceInformationFilterKey' "ResourceType"

pattern AssociationStatus :: InstanceInformationFilterKey
pattern AssociationStatus = InstanceInformationFilterKey' "AssociationStatus"

{-# COMPLETE
  InstanceIds,
  AgentVersion,
  PingStatus,
  PlatformTypes,
  ActivationIds,
  IAMRole,
  ResourceType,
  AssociationStatus,
  InstanceInformationFilterKey'
  #-}
