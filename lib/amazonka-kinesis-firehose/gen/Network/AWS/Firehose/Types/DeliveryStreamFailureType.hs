{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamFailureType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DeliveryStreamFailureType
  ( DeliveryStreamFailureType
      ( DeliveryStreamFailureType',
        RetireKMSGrantFailed,
        CreateKMSGrantFailed,
        KMSAccessDenied,
        DisabledKMSKey,
        InvalidKMSKey,
        KMSKeyNotFound,
        KMSOptInRequired,
        CreateEniFailed,
        DeleteEniFailed,
        SubnetNotFound,
        SecurityGroupNotFound,
        EniAccessDenied,
        SubnetAccessDenied,
        SecurityGroupAccessDenied,
        UnknownError
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DeliveryStreamFailureType = DeliveryStreamFailureType' Lude.Text
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

pattern RetireKMSGrantFailed :: DeliveryStreamFailureType
pattern RetireKMSGrantFailed = DeliveryStreamFailureType' "RETIRE_KMS_GRANT_FAILED"

pattern CreateKMSGrantFailed :: DeliveryStreamFailureType
pattern CreateKMSGrantFailed = DeliveryStreamFailureType' "CREATE_KMS_GRANT_FAILED"

pattern KMSAccessDenied :: DeliveryStreamFailureType
pattern KMSAccessDenied = DeliveryStreamFailureType' "KMS_ACCESS_DENIED"

pattern DisabledKMSKey :: DeliveryStreamFailureType
pattern DisabledKMSKey = DeliveryStreamFailureType' "DISABLED_KMS_KEY"

pattern InvalidKMSKey :: DeliveryStreamFailureType
pattern InvalidKMSKey = DeliveryStreamFailureType' "INVALID_KMS_KEY"

pattern KMSKeyNotFound :: DeliveryStreamFailureType
pattern KMSKeyNotFound = DeliveryStreamFailureType' "KMS_KEY_NOT_FOUND"

pattern KMSOptInRequired :: DeliveryStreamFailureType
pattern KMSOptInRequired = DeliveryStreamFailureType' "KMS_OPT_IN_REQUIRED"

pattern CreateEniFailed :: DeliveryStreamFailureType
pattern CreateEniFailed = DeliveryStreamFailureType' "CREATE_ENI_FAILED"

pattern DeleteEniFailed :: DeliveryStreamFailureType
pattern DeleteEniFailed = DeliveryStreamFailureType' "DELETE_ENI_FAILED"

pattern SubnetNotFound :: DeliveryStreamFailureType
pattern SubnetNotFound = DeliveryStreamFailureType' "SUBNET_NOT_FOUND"

pattern SecurityGroupNotFound :: DeliveryStreamFailureType
pattern SecurityGroupNotFound = DeliveryStreamFailureType' "SECURITY_GROUP_NOT_FOUND"

pattern EniAccessDenied :: DeliveryStreamFailureType
pattern EniAccessDenied = DeliveryStreamFailureType' "ENI_ACCESS_DENIED"

pattern SubnetAccessDenied :: DeliveryStreamFailureType
pattern SubnetAccessDenied = DeliveryStreamFailureType' "SUBNET_ACCESS_DENIED"

pattern SecurityGroupAccessDenied :: DeliveryStreamFailureType
pattern SecurityGroupAccessDenied = DeliveryStreamFailureType' "SECURITY_GROUP_ACCESS_DENIED"

pattern UnknownError :: DeliveryStreamFailureType
pattern UnknownError = DeliveryStreamFailureType' "UNKNOWN_ERROR"

{-# COMPLETE
  RetireKMSGrantFailed,
  CreateKMSGrantFailed,
  KMSAccessDenied,
  DisabledKMSKey,
  InvalidKMSKey,
  KMSKeyNotFound,
  KMSOptInRequired,
  CreateEniFailed,
  DeleteEniFailed,
  SubnetNotFound,
  SecurityGroupNotFound,
  EniAccessDenied,
  SubnetAccessDenied,
  SecurityGroupAccessDenied,
  UnknownError,
  DeliveryStreamFailureType'
  #-}
