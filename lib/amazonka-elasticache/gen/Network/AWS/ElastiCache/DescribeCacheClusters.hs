{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.DescribeCacheClusters
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied.
--
-- By default, abbreviated information about the clusters is returned. You can use the optional /ShowCacheNodeInfo/ flag to retrieve detailed information about the cache nodes associated with the clusters. These details include the DNS address and port for the cache node endpoint.
-- If the cluster is in the /creating/ state, only cluster-level information is displayed until all of the nodes are successfully provisioned.
-- If the cluster is in the /deleting/ state, only cluster-level information is displayed.
-- If cache nodes are currently being added to the cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cluster state is /available/ , the cluster is ready for use.
-- If cache nodes are currently being removed from the cluster, no endpoint information for the removed nodes is displayed.
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeCacheClusters
  ( -- * Creating a request
    DescribeCacheClusters (..),
    mkDescribeCacheClusters,

    -- ** Request lenses
    dccsShowCacheClustersNotInReplicationGroups,
    dccsCacheClusterId,
    dccsMarker,
    dccsMaxRecords,
    dccsShowCacheNodeInfo,

    -- * Destructuring the response
    DescribeCacheClustersResponse (..),
    mkDescribeCacheClustersResponse,

    -- ** Response lenses
    dccrsCacheClusters,
    dccrsMarker,
    dccrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Represents the input of a @DescribeCacheClusters@ operation.
--
-- /See:/ 'mkDescribeCacheClusters' smart constructor.
data DescribeCacheClusters = DescribeCacheClusters'
  { -- | An optional flag that can be included in the @DescribeCacheCluster@ request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.
    showCacheClustersNotInReplicationGroups :: Lude.Maybe Lude.Bool,
    -- | The user-supplied cluster identifier. If this parameter is specified, only information about that specific cluster is returned. This parameter isn't case sensitive.
    cacheClusterId :: Lude.Maybe Lude.Text,
    -- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Lude.Maybe Lude.Text,
    -- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved.
    --
    -- Default: 100
    -- Constraints: minimum 20; maximum 100.
    maxRecords :: Lude.Maybe Lude.Int,
    -- | An optional flag that can be included in the @DescribeCacheCluster@ request to retrieve information about the individual cache nodes.
    showCacheNodeInfo :: Lude.Maybe Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeCacheClusters' with the minimum fields required to make a request.
--
-- * 'showCacheClustersNotInReplicationGroups' - An optional flag that can be included in the @DescribeCacheCluster@ request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.
-- * 'cacheClusterId' - The user-supplied cluster identifier. If this parameter is specified, only information about that specific cluster is returned. This parameter isn't case sensitive.
-- * 'marker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
-- * 'maxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved.
--
-- Default: 100
-- Constraints: minimum 20; maximum 100.
-- * 'showCacheNodeInfo' - An optional flag that can be included in the @DescribeCacheCluster@ request to retrieve information about the individual cache nodes.
mkDescribeCacheClusters ::
  DescribeCacheClusters
mkDescribeCacheClusters =
  DescribeCacheClusters'
    { showCacheClustersNotInReplicationGroups =
        Lude.Nothing,
      cacheClusterId = Lude.Nothing,
      marker = Lude.Nothing,
      maxRecords = Lude.Nothing,
      showCacheNodeInfo = Lude.Nothing
    }

-- | An optional flag that can be included in the @DescribeCacheCluster@ request to show only nodes (API/CLI: clusters) that are not members of a replication group. In practice, this mean Memcached and single node Redis clusters.
--
-- /Note:/ Consider using 'showCacheClustersNotInReplicationGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccsShowCacheClustersNotInReplicationGroups :: Lens.Lens' DescribeCacheClusters (Lude.Maybe Lude.Bool)
dccsShowCacheClustersNotInReplicationGroups = Lens.lens (showCacheClustersNotInReplicationGroups :: DescribeCacheClusters -> Lude.Maybe Lude.Bool) (\s a -> s {showCacheClustersNotInReplicationGroups = a} :: DescribeCacheClusters)
{-# DEPRECATED dccsShowCacheClustersNotInReplicationGroups "Use generic-lens or generic-optics with 'showCacheClustersNotInReplicationGroups' instead." #-}

-- | The user-supplied cluster identifier. If this parameter is specified, only information about that specific cluster is returned. This parameter isn't case sensitive.
--
-- /Note:/ Consider using 'cacheClusterId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccsCacheClusterId :: Lens.Lens' DescribeCacheClusters (Lude.Maybe Lude.Text)
dccsCacheClusterId = Lens.lens (cacheClusterId :: DescribeCacheClusters -> Lude.Maybe Lude.Text) (\s a -> s {cacheClusterId = a} :: DescribeCacheClusters)
{-# DEPRECATED dccsCacheClusterId "Use generic-lens or generic-optics with 'cacheClusterId' instead." #-}

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccsMarker :: Lens.Lens' DescribeCacheClusters (Lude.Maybe Lude.Text)
dccsMarker = Lens.lens (marker :: DescribeCacheClusters -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: DescribeCacheClusters)
{-# DEPRECATED dccsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a marker is included in the response so that the remaining results can be retrieved.
--
-- Default: 100
-- Constraints: minimum 20; maximum 100.
--
-- /Note:/ Consider using 'maxRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccsMaxRecords :: Lens.Lens' DescribeCacheClusters (Lude.Maybe Lude.Int)
dccsMaxRecords = Lens.lens (maxRecords :: DescribeCacheClusters -> Lude.Maybe Lude.Int) (\s a -> s {maxRecords = a} :: DescribeCacheClusters)
{-# DEPRECATED dccsMaxRecords "Use generic-lens or generic-optics with 'maxRecords' instead." #-}

-- | An optional flag that can be included in the @DescribeCacheCluster@ request to retrieve information about the individual cache nodes.
--
-- /Note:/ Consider using 'showCacheNodeInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccsShowCacheNodeInfo :: Lens.Lens' DescribeCacheClusters (Lude.Maybe Lude.Bool)
dccsShowCacheNodeInfo = Lens.lens (showCacheNodeInfo :: DescribeCacheClusters -> Lude.Maybe Lude.Bool) (\s a -> s {showCacheNodeInfo = a} :: DescribeCacheClusters)
{-# DEPRECATED dccsShowCacheNodeInfo "Use generic-lens or generic-optics with 'showCacheNodeInfo' instead." #-}

instance Page.AWSPager DescribeCacheClusters where
  page rq rs
    | Page.stop (rs Lens.^. dccrsMarker) = Lude.Nothing
    | Page.stop (rs Lens.^. dccrsCacheClusters) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$
        rq
          Lude.& dccsMarker Lens..~ rs Lens.^. dccrsMarker

instance Lude.AWSRequest DescribeCacheClusters where
  type Rs DescribeCacheClusters = DescribeCacheClustersResponse
  request = Req.postQuery elastiCacheService
  response =
    Res.receiveXMLWrapper
      "DescribeCacheClustersResult"
      ( \s h x ->
          DescribeCacheClustersResponse'
            Lude.<$> ( x Lude..@? "CacheClusters" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "CacheCluster")
                     )
            Lude.<*> (x Lude..@? "Marker")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeCacheClusters where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DescribeCacheClusters where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeCacheClusters where
  toQuery DescribeCacheClusters' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("DescribeCacheClusters" :: Lude.ByteString),
        "Version" Lude.=: ("2015-02-02" :: Lude.ByteString),
        "ShowCacheClustersNotInReplicationGroups"
          Lude.=: showCacheClustersNotInReplicationGroups,
        "CacheClusterId" Lude.=: cacheClusterId,
        "Marker" Lude.=: marker,
        "MaxRecords" Lude.=: maxRecords,
        "ShowCacheNodeInfo" Lude.=: showCacheNodeInfo
      ]

-- | Represents the output of a @DescribeCacheClusters@ operation.
--
-- /See:/ 'mkDescribeCacheClustersResponse' smart constructor.
data DescribeCacheClustersResponse = DescribeCacheClustersResponse'
  { -- | A list of clusters. Each item in the list contains detailed information about one cluster.
    cacheClusters :: Lude.Maybe [CacheCluster],
    -- | Provides an identifier to allow retrieval of paginated results.
    marker :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeCacheClustersResponse' with the minimum fields required to make a request.
--
-- * 'cacheClusters' - A list of clusters. Each item in the list contains detailed information about one cluster.
-- * 'marker' - Provides an identifier to allow retrieval of paginated results.
-- * 'responseStatus' - The response status code.
mkDescribeCacheClustersResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeCacheClustersResponse
mkDescribeCacheClustersResponse pResponseStatus_ =
  DescribeCacheClustersResponse'
    { cacheClusters = Lude.Nothing,
      marker = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | A list of clusters. Each item in the list contains detailed information about one cluster.
--
-- /Note:/ Consider using 'cacheClusters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccrsCacheClusters :: Lens.Lens' DescribeCacheClustersResponse (Lude.Maybe [CacheCluster])
dccrsCacheClusters = Lens.lens (cacheClusters :: DescribeCacheClustersResponse -> Lude.Maybe [CacheCluster]) (\s a -> s {cacheClusters = a} :: DescribeCacheClustersResponse)
{-# DEPRECATED dccrsCacheClusters "Use generic-lens or generic-optics with 'cacheClusters' instead." #-}

-- | Provides an identifier to allow retrieval of paginated results.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccrsMarker :: Lens.Lens' DescribeCacheClustersResponse (Lude.Maybe Lude.Text)
dccrsMarker = Lens.lens (marker :: DescribeCacheClustersResponse -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: DescribeCacheClustersResponse)
{-# DEPRECATED dccrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dccrsResponseStatus :: Lens.Lens' DescribeCacheClustersResponse Lude.Int
dccrsResponseStatus = Lens.lens (responseStatus :: DescribeCacheClustersResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeCacheClustersResponse)
{-# DEPRECATED dccrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
