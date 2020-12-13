{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types.TrustedAdvisorResourceDetail
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.TrustedAdvisorResourceDetail
  ( TrustedAdvisorResourceDetail (..),

    -- * Smart constructor
    mkTrustedAdvisorResourceDetail,

    -- * Lenses
    tardStatus,
    tardResourceId,
    tardIsSuppressed,
    tardMetadata,
    tardRegion,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about a resource identified by a Trusted Advisor check.
--
-- /See:/ 'mkTrustedAdvisorResourceDetail' smart constructor.
data TrustedAdvisorResourceDetail = TrustedAdvisorResourceDetail'
  { -- | The status code for the resource identified in the Trusted Advisor check.
    status :: Lude.Text,
    -- | The unique identifier for the identified resource.
    resourceId :: Lude.Text,
    -- | Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.
    isSuppressed :: Lude.Maybe Lude.Bool,
    -- | Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the 'TrustedAdvisorCheckDescription' object returned by the call to 'DescribeTrustedAdvisorChecks' . __Metadata__ contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data.
    metadata :: [Lude.Text],
    -- | The AWS region in which the identified resource is located.
    region :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TrustedAdvisorResourceDetail' with the minimum fields required to make a request.
--
-- * 'status' - The status code for the resource identified in the Trusted Advisor check.
-- * 'resourceId' - The unique identifier for the identified resource.
-- * 'isSuppressed' - Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.
-- * 'metadata' - Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the 'TrustedAdvisorCheckDescription' object returned by the call to 'DescribeTrustedAdvisorChecks' . __Metadata__ contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data.
-- * 'region' - The AWS region in which the identified resource is located.
mkTrustedAdvisorResourceDetail ::
  -- | 'status'
  Lude.Text ->
  -- | 'resourceId'
  Lude.Text ->
  TrustedAdvisorResourceDetail
mkTrustedAdvisorResourceDetail pStatus_ pResourceId_ =
  TrustedAdvisorResourceDetail'
    { status = pStatus_,
      resourceId = pResourceId_,
      isSuppressed = Lude.Nothing,
      metadata = Lude.mempty,
      region = Lude.Nothing
    }

-- | The status code for the resource identified in the Trusted Advisor check.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tardStatus :: Lens.Lens' TrustedAdvisorResourceDetail Lude.Text
tardStatus = Lens.lens (status :: TrustedAdvisorResourceDetail -> Lude.Text) (\s a -> s {status = a} :: TrustedAdvisorResourceDetail)
{-# DEPRECATED tardStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The unique identifier for the identified resource.
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tardResourceId :: Lens.Lens' TrustedAdvisorResourceDetail Lude.Text
tardResourceId = Lens.lens (resourceId :: TrustedAdvisorResourceDetail -> Lude.Text) (\s a -> s {resourceId = a} :: TrustedAdvisorResourceDetail)
{-# DEPRECATED tardResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.
--
-- /Note:/ Consider using 'isSuppressed' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tardIsSuppressed :: Lens.Lens' TrustedAdvisorResourceDetail (Lude.Maybe Lude.Bool)
tardIsSuppressed = Lens.lens (isSuppressed :: TrustedAdvisorResourceDetail -> Lude.Maybe Lude.Bool) (\s a -> s {isSuppressed = a} :: TrustedAdvisorResourceDetail)
{-# DEPRECATED tardIsSuppressed "Use generic-lens or generic-optics with 'isSuppressed' instead." #-}

-- | Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the 'TrustedAdvisorCheckDescription' object returned by the call to 'DescribeTrustedAdvisorChecks' . __Metadata__ contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data.
--
-- /Note:/ Consider using 'metadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tardMetadata :: Lens.Lens' TrustedAdvisorResourceDetail [Lude.Text]
tardMetadata = Lens.lens (metadata :: TrustedAdvisorResourceDetail -> [Lude.Text]) (\s a -> s {metadata = a} :: TrustedAdvisorResourceDetail)
{-# DEPRECATED tardMetadata "Use generic-lens or generic-optics with 'metadata' instead." #-}

-- | The AWS region in which the identified resource is located.
--
-- /Note:/ Consider using 'region' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tardRegion :: Lens.Lens' TrustedAdvisorResourceDetail (Lude.Maybe Lude.Text)
tardRegion = Lens.lens (region :: TrustedAdvisorResourceDetail -> Lude.Maybe Lude.Text) (\s a -> s {region = a} :: TrustedAdvisorResourceDetail)
{-# DEPRECATED tardRegion "Use generic-lens or generic-optics with 'region' instead." #-}

instance Lude.FromJSON TrustedAdvisorResourceDetail where
  parseJSON =
    Lude.withObject
      "TrustedAdvisorResourceDetail"
      ( \x ->
          TrustedAdvisorResourceDetail'
            Lude.<$> (x Lude..: "status")
            Lude.<*> (x Lude..: "resourceId")
            Lude.<*> (x Lude..:? "isSuppressed")
            Lude.<*> (x Lude..:? "metadata" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "region")
      )
