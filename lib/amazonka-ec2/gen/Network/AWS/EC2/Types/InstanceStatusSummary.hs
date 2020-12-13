{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceStatusSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStatusSummary
  ( InstanceStatusSummary (..),

    -- * Smart constructor
    mkInstanceStatusSummary,

    -- * Lenses
    issStatus,
    issDetails,
  )
where

import Network.AWS.EC2.Types.InstanceStatusDetails
import Network.AWS.EC2.Types.SummaryStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes the status of an instance.
--
-- /See:/ 'mkInstanceStatusSummary' smart constructor.
data InstanceStatusSummary = InstanceStatusSummary'
  { -- | The status.
    status :: SummaryStatus,
    -- | The system instance health or application instance health.
    details :: Lude.Maybe [InstanceStatusDetails]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'InstanceStatusSummary' with the minimum fields required to make a request.
--
-- * 'status' - The status.
-- * 'details' - The system instance health or application instance health.
mkInstanceStatusSummary ::
  -- | 'status'
  SummaryStatus ->
  InstanceStatusSummary
mkInstanceStatusSummary pStatus_ =
  InstanceStatusSummary' {status = pStatus_, details = Lude.Nothing}

-- | The status.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
issStatus :: Lens.Lens' InstanceStatusSummary SummaryStatus
issStatus = Lens.lens (status :: InstanceStatusSummary -> SummaryStatus) (\s a -> s {status = a} :: InstanceStatusSummary)
{-# DEPRECATED issStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The system instance health or application instance health.
--
-- /Note:/ Consider using 'details' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
issDetails :: Lens.Lens' InstanceStatusSummary (Lude.Maybe [InstanceStatusDetails])
issDetails = Lens.lens (details :: InstanceStatusSummary -> Lude.Maybe [InstanceStatusDetails]) (\s a -> s {details = a} :: InstanceStatusSummary)
{-# DEPRECATED issDetails "Use generic-lens or generic-optics with 'details' instead." #-}

instance Lude.FromXML InstanceStatusSummary where
  parseXML x =
    InstanceStatusSummary'
      Lude.<$> (x Lude..@ "status")
      Lude.<*> ( x Lude..@? "details" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "item")
               )
