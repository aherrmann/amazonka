{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BillingTagsSource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BillingTagsSource
  ( BillingTagsSource
      ( BillingTagsSource',
        Queue,
        Preset,
        JobTemplate,
        Job
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up.
newtype BillingTagsSource = BillingTagsSource' Lude.Text
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

pattern Queue :: BillingTagsSource
pattern Queue = BillingTagsSource' "QUEUE"

pattern Preset :: BillingTagsSource
pattern Preset = BillingTagsSource' "PRESET"

pattern JobTemplate :: BillingTagsSource
pattern JobTemplate = BillingTagsSource' "JOB_TEMPLATE"

pattern Job :: BillingTagsSource
pattern Job = BillingTagsSource' "JOB"

{-# COMPLETE
  Queue,
  Preset,
  JobTemplate,
  Job,
  BillingTagsSource'
  #-}
