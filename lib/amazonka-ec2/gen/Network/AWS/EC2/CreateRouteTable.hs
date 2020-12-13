{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateRouteTable
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.
--
-- For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html Route Tables> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.CreateRouteTable
  ( -- * Creating a request
    CreateRouteTable (..),
    mkCreateRouteTable,

    -- ** Request lenses
    crtVPCId,
    crtTagSpecifications,
    crtDryRun,

    -- * Destructuring the response
    CreateRouteTableResponse (..),
    mkCreateRouteTableResponse,

    -- ** Response lenses
    crtrsRouteTable,
    crtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCreateRouteTable' smart constructor.
data CreateRouteTable = CreateRouteTable'
  { -- | The ID of the VPC.
    vpcId :: Lude.Text,
    -- | The tags to assign to the route table.
    tagSpecifications :: Lude.Maybe [TagSpecification],
    -- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
    dryRun :: Lude.Maybe Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateRouteTable' with the minimum fields required to make a request.
--
-- * 'vpcId' - The ID of the VPC.
-- * 'tagSpecifications' - The tags to assign to the route table.
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mkCreateRouteTable ::
  -- | 'vpcId'
  Lude.Text ->
  CreateRouteTable
mkCreateRouteTable pVPCId_ =
  CreateRouteTable'
    { vpcId = pVPCId_,
      tagSpecifications = Lude.Nothing,
      dryRun = Lude.Nothing
    }

-- | The ID of the VPC.
--
-- /Note:/ Consider using 'vpcId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtVPCId :: Lens.Lens' CreateRouteTable Lude.Text
crtVPCId = Lens.lens (vpcId :: CreateRouteTable -> Lude.Text) (\s a -> s {vpcId = a} :: CreateRouteTable)
{-# DEPRECATED crtVPCId "Use generic-lens or generic-optics with 'vpcId' instead." #-}

-- | The tags to assign to the route table.
--
-- /Note:/ Consider using 'tagSpecifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtTagSpecifications :: Lens.Lens' CreateRouteTable (Lude.Maybe [TagSpecification])
crtTagSpecifications = Lens.lens (tagSpecifications :: CreateRouteTable -> Lude.Maybe [TagSpecification]) (\s a -> s {tagSpecifications = a} :: CreateRouteTable)
{-# DEPRECATED crtTagSpecifications "Use generic-lens or generic-optics with 'tagSpecifications' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtDryRun :: Lens.Lens' CreateRouteTable (Lude.Maybe Lude.Bool)
crtDryRun = Lens.lens (dryRun :: CreateRouteTable -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: CreateRouteTable)
{-# DEPRECATED crtDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

instance Lude.AWSRequest CreateRouteTable where
  type Rs CreateRouteTable = CreateRouteTableResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          CreateRouteTableResponse'
            Lude.<$> (x Lude..@? "routeTable") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateRouteTable where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath CreateRouteTable where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateRouteTable where
  toQuery CreateRouteTable' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("CreateRouteTable" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "VpcId" Lude.=: vpcId,
        Lude.toQuery
          (Lude.toQueryList "TagSpecification" Lude.<$> tagSpecifications),
        "DryRun" Lude.=: dryRun
      ]

-- | /See:/ 'mkCreateRouteTableResponse' smart constructor.
data CreateRouteTableResponse = CreateRouteTableResponse'
  { -- | Information about the route table.
    routeTable :: Lude.Maybe RouteTable,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateRouteTableResponse' with the minimum fields required to make a request.
--
-- * 'routeTable' - Information about the route table.
-- * 'responseStatus' - The response status code.
mkCreateRouteTableResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateRouteTableResponse
mkCreateRouteTableResponse pResponseStatus_ =
  CreateRouteTableResponse'
    { routeTable = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Information about the route table.
--
-- /Note:/ Consider using 'routeTable' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtrsRouteTable :: Lens.Lens' CreateRouteTableResponse (Lude.Maybe RouteTable)
crtrsRouteTable = Lens.lens (routeTable :: CreateRouteTableResponse -> Lude.Maybe RouteTable) (\s a -> s {routeTable = a} :: CreateRouteTableResponse)
{-# DEPRECATED crtrsRouteTable "Use generic-lens or generic-optics with 'routeTable' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtrsResponseStatus :: Lens.Lens' CreateRouteTableResponse Lude.Int
crtrsResponseStatus = Lens.lens (responseStatus :: CreateRouteTableResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateRouteTableResponse)
{-# DEPRECATED crtrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
