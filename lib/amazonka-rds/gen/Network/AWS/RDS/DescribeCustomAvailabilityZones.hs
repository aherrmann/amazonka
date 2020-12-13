{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.DescribeCustomAvailabilityZones
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about custom Availability Zones (AZs).
--
-- A custom AZ is an on-premises AZ that is integrated with a VMware vSphere cluster.
-- For more information about RDS on VMware, see the <https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html /RDS on VMware User Guide./ >
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeCustomAvailabilityZones
  ( -- * Creating a request
    DescribeCustomAvailabilityZones (..),
    mkDescribeCustomAvailabilityZones,

    -- ** Request lenses
    dFilters,
    dCustomAvailabilityZoneId,
    dMarker,
    dMaxRecords,

    -- * Destructuring the response
    DescribeCustomAvailabilityZonesResponse (..),
    mkDescribeCustomAvailabilityZonesResponse,

    -- ** Response lenses
    drsCustomAvailabilityZones,
    drsMarker,
    drsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDescribeCustomAvailabilityZones' smart constructor.
data DescribeCustomAvailabilityZones = DescribeCustomAvailabilityZones'
  { -- | A filter that specifies one or more custom AZs to describe.
    filters :: Lude.Maybe [Filter],
    -- | The custom AZ identifier. If this parameter is specified, information from only the specific custom AZ is returned.
    customAvailabilityZoneId :: Lude.Maybe Lude.Text,
    -- | An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Lude.Maybe Lude.Text,
    -- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.
    --
    -- Default: 100
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Lude.Maybe Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeCustomAvailabilityZones' with the minimum fields required to make a request.
--
-- * 'filters' - A filter that specifies one or more custom AZs to describe.
-- * 'customAvailabilityZoneId' - The custom AZ identifier. If this parameter is specified, information from only the specific custom AZ is returned.
-- * 'marker' - An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
-- * 'maxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.
--
-- Default: 100
-- Constraints: Minimum 20, maximum 100.
mkDescribeCustomAvailabilityZones ::
  DescribeCustomAvailabilityZones
mkDescribeCustomAvailabilityZones =
  DescribeCustomAvailabilityZones'
    { filters = Lude.Nothing,
      customAvailabilityZoneId = Lude.Nothing,
      marker = Lude.Nothing,
      maxRecords = Lude.Nothing
    }

-- | A filter that specifies one or more custom AZs to describe.
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dFilters :: Lens.Lens' DescribeCustomAvailabilityZones (Lude.Maybe [Filter])
dFilters = Lens.lens (filters :: DescribeCustomAvailabilityZones -> Lude.Maybe [Filter]) (\s a -> s {filters = a} :: DescribeCustomAvailabilityZones)
{-# DEPRECATED dFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The custom AZ identifier. If this parameter is specified, information from only the specific custom AZ is returned.
--
-- /Note:/ Consider using 'customAvailabilityZoneId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dCustomAvailabilityZoneId :: Lens.Lens' DescribeCustomAvailabilityZones (Lude.Maybe Lude.Text)
dCustomAvailabilityZoneId = Lens.lens (customAvailabilityZoneId :: DescribeCustomAvailabilityZones -> Lude.Maybe Lude.Text) (\s a -> s {customAvailabilityZoneId = a} :: DescribeCustomAvailabilityZones)
{-# DEPRECATED dCustomAvailabilityZoneId "Use generic-lens or generic-optics with 'customAvailabilityZoneId' instead." #-}

-- | An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dMarker :: Lens.Lens' DescribeCustomAvailabilityZones (Lude.Maybe Lude.Text)
dMarker = Lens.lens (marker :: DescribeCustomAvailabilityZones -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: DescribeCustomAvailabilityZones)
{-# DEPRECATED dMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.
--
-- Default: 100
-- Constraints: Minimum 20, maximum 100.
--
-- /Note:/ Consider using 'maxRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dMaxRecords :: Lens.Lens' DescribeCustomAvailabilityZones (Lude.Maybe Lude.Int)
dMaxRecords = Lens.lens (maxRecords :: DescribeCustomAvailabilityZones -> Lude.Maybe Lude.Int) (\s a -> s {maxRecords = a} :: DescribeCustomAvailabilityZones)
{-# DEPRECATED dMaxRecords "Use generic-lens or generic-optics with 'maxRecords' instead." #-}

instance Page.AWSPager DescribeCustomAvailabilityZones where
  page rq rs
    | Page.stop (rs Lens.^. drsMarker) = Lude.Nothing
    | Page.stop (rs Lens.^. drsCustomAvailabilityZones) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$ rq Lude.& dMarker Lens..~ rs Lens.^. drsMarker

instance Lude.AWSRequest DescribeCustomAvailabilityZones where
  type
    Rs DescribeCustomAvailabilityZones =
      DescribeCustomAvailabilityZonesResponse
  request = Req.postQuery rdsService
  response =
    Res.receiveXMLWrapper
      "DescribeCustomAvailabilityZonesResult"
      ( \s h x ->
          DescribeCustomAvailabilityZonesResponse'
            Lude.<$> ( x Lude..@? "CustomAvailabilityZones" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "CustomAvailabilityZone")
                     )
            Lude.<*> (x Lude..@? "Marker")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeCustomAvailabilityZones where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DescribeCustomAvailabilityZones where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeCustomAvailabilityZones where
  toQuery DescribeCustomAvailabilityZones' {..} =
    Lude.mconcat
      [ "Action"
          Lude.=: ("DescribeCustomAvailabilityZones" :: Lude.ByteString),
        "Version" Lude.=: ("2014-10-31" :: Lude.ByteString),
        "Filters"
          Lude.=: Lude.toQuery (Lude.toQueryList "Filter" Lude.<$> filters),
        "CustomAvailabilityZoneId" Lude.=: customAvailabilityZoneId,
        "Marker" Lude.=: marker,
        "MaxRecords" Lude.=: maxRecords
      ]

-- | /See:/ 'mkDescribeCustomAvailabilityZonesResponse' smart constructor.
data DescribeCustomAvailabilityZonesResponse = DescribeCustomAvailabilityZonesResponse'
  { -- | The list of 'CustomAvailabilityZone' objects for the AWS account.
    customAvailabilityZones :: Lude.Maybe [CustomAvailabilityZone],
    -- | An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeCustomAvailabilityZonesResponse' with the minimum fields required to make a request.
--
-- * 'customAvailabilityZones' - The list of 'CustomAvailabilityZone' objects for the AWS account.
-- * 'marker' - An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
-- * 'responseStatus' - The response status code.
mkDescribeCustomAvailabilityZonesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeCustomAvailabilityZonesResponse
mkDescribeCustomAvailabilityZonesResponse pResponseStatus_ =
  DescribeCustomAvailabilityZonesResponse'
    { customAvailabilityZones =
        Lude.Nothing,
      marker = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The list of 'CustomAvailabilityZone' objects for the AWS account.
--
-- /Note:/ Consider using 'customAvailabilityZones' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsCustomAvailabilityZones :: Lens.Lens' DescribeCustomAvailabilityZonesResponse (Lude.Maybe [CustomAvailabilityZone])
drsCustomAvailabilityZones = Lens.lens (customAvailabilityZones :: DescribeCustomAvailabilityZonesResponse -> Lude.Maybe [CustomAvailabilityZone]) (\s a -> s {customAvailabilityZones = a} :: DescribeCustomAvailabilityZonesResponse)
{-# DEPRECATED drsCustomAvailabilityZones "Use generic-lens or generic-optics with 'customAvailabilityZones' instead." #-}

-- | An optional pagination token provided by a previous @DescribeCustomAvailabilityZones@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsMarker :: Lens.Lens' DescribeCustomAvailabilityZonesResponse (Lude.Maybe Lude.Text)
drsMarker = Lens.lens (marker :: DescribeCustomAvailabilityZonesResponse -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: DescribeCustomAvailabilityZonesResponse)
{-# DEPRECATED drsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsResponseStatus :: Lens.Lens' DescribeCustomAvailabilityZonesResponse Lude.Int
drsResponseStatus = Lens.lens (responseStatus :: DescribeCustomAvailabilityZonesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeCustomAvailabilityZonesResponse)
{-# DEPRECATED drsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
