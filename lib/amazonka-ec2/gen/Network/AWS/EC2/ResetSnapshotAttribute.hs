{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.ResetSnapshotAttribute
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets permission settings for the specified snapshot.
--
-- For more information about modifying snapshot permissions, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html Sharing snapshots> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.ResetSnapshotAttribute
  ( -- * Creating a request
    ResetSnapshotAttribute (..),
    mkResetSnapshotAttribute,

    -- ** Request lenses
    rsaAttribute,
    rsaDryRun,
    rsaSnapshotId,

    -- * Destructuring the response
    ResetSnapshotAttributeResponse (..),
    mkResetSnapshotAttributeResponse,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkResetSnapshotAttribute' smart constructor.
data ResetSnapshotAttribute = ResetSnapshotAttribute'
  { -- | The attribute to reset. Currently, only the attribute for permission to create volumes can be reset.
    attribute :: SnapshotAttributeName,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Lude.Maybe Lude.Bool,
    -- | The ID of the snapshot.
    snapshotId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ResetSnapshotAttribute' with the minimum fields required to make a request.
--
-- * 'attribute' - The attribute to reset. Currently, only the attribute for permission to create volumes can be reset.
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'snapshotId' - The ID of the snapshot.
mkResetSnapshotAttribute ::
  -- | 'attribute'
  SnapshotAttributeName ->
  -- | 'snapshotId'
  Lude.Text ->
  ResetSnapshotAttribute
mkResetSnapshotAttribute pAttribute_ pSnapshotId_ =
  ResetSnapshotAttribute'
    { attribute = pAttribute_,
      dryRun = Lude.Nothing,
      snapshotId = pSnapshotId_
    }

-- | The attribute to reset. Currently, only the attribute for permission to create volumes can be reset.
--
-- /Note:/ Consider using 'attribute' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsaAttribute :: Lens.Lens' ResetSnapshotAttribute SnapshotAttributeName
rsaAttribute = Lens.lens (attribute :: ResetSnapshotAttribute -> SnapshotAttributeName) (\s a -> s {attribute = a} :: ResetSnapshotAttribute)
{-# DEPRECATED rsaAttribute "Use generic-lens or generic-optics with 'attribute' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsaDryRun :: Lens.Lens' ResetSnapshotAttribute (Lude.Maybe Lude.Bool)
rsaDryRun = Lens.lens (dryRun :: ResetSnapshotAttribute -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: ResetSnapshotAttribute)
{-# DEPRECATED rsaDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The ID of the snapshot.
--
-- /Note:/ Consider using 'snapshotId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsaSnapshotId :: Lens.Lens' ResetSnapshotAttribute Lude.Text
rsaSnapshotId = Lens.lens (snapshotId :: ResetSnapshotAttribute -> Lude.Text) (\s a -> s {snapshotId = a} :: ResetSnapshotAttribute)
{-# DEPRECATED rsaSnapshotId "Use generic-lens or generic-optics with 'snapshotId' instead." #-}

instance Lude.AWSRequest ResetSnapshotAttribute where
  type Rs ResetSnapshotAttribute = ResetSnapshotAttributeResponse
  request = Req.postQuery ec2Service
  response = Res.receiveNull ResetSnapshotAttributeResponse'

instance Lude.ToHeaders ResetSnapshotAttribute where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath ResetSnapshotAttribute where
  toPath = Lude.const "/"

instance Lude.ToQuery ResetSnapshotAttribute where
  toQuery ResetSnapshotAttribute' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("ResetSnapshotAttribute" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "Attribute" Lude.=: attribute,
        "DryRun" Lude.=: dryRun,
        "SnapshotId" Lude.=: snapshotId
      ]

-- | /See:/ 'mkResetSnapshotAttributeResponse' smart constructor.
data ResetSnapshotAttributeResponse = ResetSnapshotAttributeResponse'
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ResetSnapshotAttributeResponse' with the minimum fields required to make a request.
mkResetSnapshotAttributeResponse ::
  ResetSnapshotAttributeResponse
mkResetSnapshotAttributeResponse = ResetSnapshotAttributeResponse'
