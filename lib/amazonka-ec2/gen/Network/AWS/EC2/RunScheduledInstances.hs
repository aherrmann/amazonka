{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.RunScheduledInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launches the specified Scheduled Instances.
--
-- Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using 'PurchaseScheduledInstances' .
-- You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html Scheduled Instances> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.RunScheduledInstances
  ( -- * Creating a request
    RunScheduledInstances (..),
    mkRunScheduledInstances,

    -- ** Request lenses
    rsisClientToken,
    rsisInstanceCount,
    rsisScheduledInstanceId,
    rsisLaunchSpecification,
    rsisDryRun,

    -- * Destructuring the response
    RunScheduledInstancesResponse (..),
    mkRunScheduledInstancesResponse,

    -- ** Response lenses
    rrsInstanceIdSet,
    rrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Contains the parameters for RunScheduledInstances.
--
-- /See:/ 'mkRunScheduledInstances' smart constructor.
data RunScheduledInstances = RunScheduledInstances'
  { -- | Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
    clientToken :: Lude.Maybe Lude.Text,
    -- | The number of instances.
    --
    -- Default: 1
    instanceCount :: Lude.Maybe Lude.Int,
    -- | The Scheduled Instance ID.
    scheduledInstanceId :: Lude.Text,
    -- | The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
    launchSpecification :: ScheduledInstancesLaunchSpecification,
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Lude.Maybe Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RunScheduledInstances' with the minimum fields required to make a request.
--
-- * 'clientToken' - Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
-- * 'instanceCount' - The number of instances.
--
-- Default: 1
-- * 'scheduledInstanceId' - The Scheduled Instance ID.
-- * 'launchSpecification' - The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mkRunScheduledInstances ::
  -- | 'scheduledInstanceId'
  Lude.Text ->
  -- | 'launchSpecification'
  ScheduledInstancesLaunchSpecification ->
  RunScheduledInstances
mkRunScheduledInstances pScheduledInstanceId_ pLaunchSpecification_ =
  RunScheduledInstances'
    { clientToken = Lude.Nothing,
      instanceCount = Lude.Nothing,
      scheduledInstanceId = pScheduledInstanceId_,
      launchSpecification = pLaunchSpecification_,
      dryRun = Lude.Nothing
    }

-- | Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisClientToken :: Lens.Lens' RunScheduledInstances (Lude.Maybe Lude.Text)
rsisClientToken = Lens.lens (clientToken :: RunScheduledInstances -> Lude.Maybe Lude.Text) (\s a -> s {clientToken = a} :: RunScheduledInstances)
{-# DEPRECATED rsisClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | The number of instances.
--
-- Default: 1
--
-- /Note:/ Consider using 'instanceCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisInstanceCount :: Lens.Lens' RunScheduledInstances (Lude.Maybe Lude.Int)
rsisInstanceCount = Lens.lens (instanceCount :: RunScheduledInstances -> Lude.Maybe Lude.Int) (\s a -> s {instanceCount = a} :: RunScheduledInstances)
{-# DEPRECATED rsisInstanceCount "Use generic-lens or generic-optics with 'instanceCount' instead." #-}

-- | The Scheduled Instance ID.
--
-- /Note:/ Consider using 'scheduledInstanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisScheduledInstanceId :: Lens.Lens' RunScheduledInstances Lude.Text
rsisScheduledInstanceId = Lens.lens (scheduledInstanceId :: RunScheduledInstances -> Lude.Text) (\s a -> s {scheduledInstanceId = a} :: RunScheduledInstances)
{-# DEPRECATED rsisScheduledInstanceId "Use generic-lens or generic-optics with 'scheduledInstanceId' instead." #-}

-- | The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
--
-- /Note:/ Consider using 'launchSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisLaunchSpecification :: Lens.Lens' RunScheduledInstances ScheduledInstancesLaunchSpecification
rsisLaunchSpecification = Lens.lens (launchSpecification :: RunScheduledInstances -> ScheduledInstancesLaunchSpecification) (\s a -> s {launchSpecification = a} :: RunScheduledInstances)
{-# DEPRECATED rsisLaunchSpecification "Use generic-lens or generic-optics with 'launchSpecification' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rsisDryRun :: Lens.Lens' RunScheduledInstances (Lude.Maybe Lude.Bool)
rsisDryRun = Lens.lens (dryRun :: RunScheduledInstances -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: RunScheduledInstances)
{-# DEPRECATED rsisDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

instance Lude.AWSRequest RunScheduledInstances where
  type Rs RunScheduledInstances = RunScheduledInstancesResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          RunScheduledInstancesResponse'
            Lude.<$> ( x Lude..@? "instanceIdSet" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "item")
                     )
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders RunScheduledInstances where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath RunScheduledInstances where
  toPath = Lude.const "/"

instance Lude.ToQuery RunScheduledInstances where
  toQuery RunScheduledInstances' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("RunScheduledInstances" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "ClientToken" Lude.=: clientToken,
        "InstanceCount" Lude.=: instanceCount,
        "ScheduledInstanceId" Lude.=: scheduledInstanceId,
        "LaunchSpecification" Lude.=: launchSpecification,
        "DryRun" Lude.=: dryRun
      ]

-- | Contains the output of RunScheduledInstances.
--
-- /See:/ 'mkRunScheduledInstancesResponse' smart constructor.
data RunScheduledInstancesResponse = RunScheduledInstancesResponse'
  { -- | The IDs of the newly launched instances.
    instanceIdSet :: Lude.Maybe [Lude.Text],
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RunScheduledInstancesResponse' with the minimum fields required to make a request.
--
-- * 'instanceIdSet' - The IDs of the newly launched instances.
-- * 'responseStatus' - The response status code.
mkRunScheduledInstancesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  RunScheduledInstancesResponse
mkRunScheduledInstancesResponse pResponseStatus_ =
  RunScheduledInstancesResponse'
    { instanceIdSet = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The IDs of the newly launched instances.
--
-- /Note:/ Consider using 'instanceIdSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsInstanceIdSet :: Lens.Lens' RunScheduledInstancesResponse (Lude.Maybe [Lude.Text])
rrsInstanceIdSet = Lens.lens (instanceIdSet :: RunScheduledInstancesResponse -> Lude.Maybe [Lude.Text]) (\s a -> s {instanceIdSet = a} :: RunScheduledInstancesResponse)
{-# DEPRECATED rrsInstanceIdSet "Use generic-lens or generic-optics with 'instanceIdSet' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsResponseStatus :: Lens.Lens' RunScheduledInstancesResponse Lude.Int
rrsResponseStatus = Lens.lens (responseStatus :: RunScheduledInstancesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: RunScheduledInstancesResponse)
{-# DEPRECATED rrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
