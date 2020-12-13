{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.OrderableReplicationInstance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.OrderableReplicationInstance
  ( OrderableReplicationInstance (..),

    -- * Smart constructor
    mkOrderableReplicationInstance,

    -- * Lenses
    oriEngineVersion,
    oriMinAllocatedStorage,
    oriReleaseStatus,
    oriIncludedAllocatedStorage,
    oriAvailabilityZones,
    oriMaxAllocatedStorage,
    oriReplicationInstanceClass,
    oriDefaultAllocatedStorage,
    oriStorageType,
  )
where

import Network.AWS.DMS.Types.ReleaseStatusValues
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | In response to the @DescribeOrderableReplicationInstances@ operation, this object describes an available replication instance. This description includes the replication instance's type, engine version, and allocated storage.
--
-- /See:/ 'mkOrderableReplicationInstance' smart constructor.
data OrderableReplicationInstance = OrderableReplicationInstance'
  { -- | The version of the replication engine.
    engineVersion :: Lude.Maybe Lude.Text,
    -- | The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
    minAllocatedStorage :: Lude.Maybe Lude.Int,
    -- | The value returned when the specified @EngineVersion@ of the replication instance is in Beta or test mode. This indicates some features might not work as expected.
    releaseStatus :: Lude.Maybe ReleaseStatusValues,
    -- | The amount of storage (in gigabytes) that is allocated for the replication instance.
    includedAllocatedStorage :: Lude.Maybe Lude.Int,
    -- | List of Availability Zones for this replication instance.
    availabilityZones :: Lude.Maybe [Lude.Text],
    -- | The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
    maxAllocatedStorage :: Lude.Maybe Lude.Int,
    -- | The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to @"dms.c4.large"@ .
    --
    -- For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> .
    replicationInstanceClass :: Lude.Maybe Lude.Text,
    -- | The default amount of storage (in gigabytes) that is allocated for the replication instance.
    defaultAllocatedStorage :: Lude.Maybe Lude.Int,
    -- | The type of storage used by the replication instance.
    storageType :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'OrderableReplicationInstance' with the minimum fields required to make a request.
--
-- * 'engineVersion' - The version of the replication engine.
-- * 'minAllocatedStorage' - The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
-- * 'releaseStatus' - The value returned when the specified @EngineVersion@ of the replication instance is in Beta or test mode. This indicates some features might not work as expected.
-- * 'includedAllocatedStorage' - The amount of storage (in gigabytes) that is allocated for the replication instance.
-- * 'availabilityZones' - List of Availability Zones for this replication instance.
-- * 'maxAllocatedStorage' - The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
-- * 'replicationInstanceClass' - The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to @"dms.c4.large"@ .
--
-- For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> .
-- * 'defaultAllocatedStorage' - The default amount of storage (in gigabytes) that is allocated for the replication instance.
-- * 'storageType' - The type of storage used by the replication instance.
mkOrderableReplicationInstance ::
  OrderableReplicationInstance
mkOrderableReplicationInstance =
  OrderableReplicationInstance'
    { engineVersion = Lude.Nothing,
      minAllocatedStorage = Lude.Nothing,
      releaseStatus = Lude.Nothing,
      includedAllocatedStorage = Lude.Nothing,
      availabilityZones = Lude.Nothing,
      maxAllocatedStorage = Lude.Nothing,
      replicationInstanceClass = Lude.Nothing,
      defaultAllocatedStorage = Lude.Nothing,
      storageType = Lude.Nothing
    }

-- | The version of the replication engine.
--
-- /Note:/ Consider using 'engineVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriEngineVersion :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe Lude.Text)
oriEngineVersion = Lens.lens (engineVersion :: OrderableReplicationInstance -> Lude.Maybe Lude.Text) (\s a -> s {engineVersion = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriEngineVersion "Use generic-lens or generic-optics with 'engineVersion' instead." #-}

-- | The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
--
-- /Note:/ Consider using 'minAllocatedStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriMinAllocatedStorage :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe Lude.Int)
oriMinAllocatedStorage = Lens.lens (minAllocatedStorage :: OrderableReplicationInstance -> Lude.Maybe Lude.Int) (\s a -> s {minAllocatedStorage = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriMinAllocatedStorage "Use generic-lens or generic-optics with 'minAllocatedStorage' instead." #-}

-- | The value returned when the specified @EngineVersion@ of the replication instance is in Beta or test mode. This indicates some features might not work as expected.
--
-- /Note:/ Consider using 'releaseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriReleaseStatus :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe ReleaseStatusValues)
oriReleaseStatus = Lens.lens (releaseStatus :: OrderableReplicationInstance -> Lude.Maybe ReleaseStatusValues) (\s a -> s {releaseStatus = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriReleaseStatus "Use generic-lens or generic-optics with 'releaseStatus' instead." #-}

-- | The amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- /Note:/ Consider using 'includedAllocatedStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriIncludedAllocatedStorage :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe Lude.Int)
oriIncludedAllocatedStorage = Lens.lens (includedAllocatedStorage :: OrderableReplicationInstance -> Lude.Maybe Lude.Int) (\s a -> s {includedAllocatedStorage = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriIncludedAllocatedStorage "Use generic-lens or generic-optics with 'includedAllocatedStorage' instead." #-}

-- | List of Availability Zones for this replication instance.
--
-- /Note:/ Consider using 'availabilityZones' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriAvailabilityZones :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe [Lude.Text])
oriAvailabilityZones = Lens.lens (availabilityZones :: OrderableReplicationInstance -> Lude.Maybe [Lude.Text]) (\s a -> s {availabilityZones = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriAvailabilityZones "Use generic-lens or generic-optics with 'availabilityZones' instead." #-}

-- | The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.
--
-- /Note:/ Consider using 'maxAllocatedStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriMaxAllocatedStorage :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe Lude.Int)
oriMaxAllocatedStorage = Lens.lens (maxAllocatedStorage :: OrderableReplicationInstance -> Lude.Maybe Lude.Int) (\s a -> s {maxAllocatedStorage = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriMaxAllocatedStorage "Use generic-lens or generic-optics with 'maxAllocatedStorage' instead." #-}

-- | The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to @"dms.c4.large"@ .
--
-- For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> .
--
-- /Note:/ Consider using 'replicationInstanceClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriReplicationInstanceClass :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe Lude.Text)
oriReplicationInstanceClass = Lens.lens (replicationInstanceClass :: OrderableReplicationInstance -> Lude.Maybe Lude.Text) (\s a -> s {replicationInstanceClass = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriReplicationInstanceClass "Use generic-lens or generic-optics with 'replicationInstanceClass' instead." #-}

-- | The default amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- /Note:/ Consider using 'defaultAllocatedStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriDefaultAllocatedStorage :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe Lude.Int)
oriDefaultAllocatedStorage = Lens.lens (defaultAllocatedStorage :: OrderableReplicationInstance -> Lude.Maybe Lude.Int) (\s a -> s {defaultAllocatedStorage = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriDefaultAllocatedStorage "Use generic-lens or generic-optics with 'defaultAllocatedStorage' instead." #-}

-- | The type of storage used by the replication instance.
--
-- /Note:/ Consider using 'storageType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oriStorageType :: Lens.Lens' OrderableReplicationInstance (Lude.Maybe Lude.Text)
oriStorageType = Lens.lens (storageType :: OrderableReplicationInstance -> Lude.Maybe Lude.Text) (\s a -> s {storageType = a} :: OrderableReplicationInstance)
{-# DEPRECATED oriStorageType "Use generic-lens or generic-optics with 'storageType' instead." #-}

instance Lude.FromJSON OrderableReplicationInstance where
  parseJSON =
    Lude.withObject
      "OrderableReplicationInstance"
      ( \x ->
          OrderableReplicationInstance'
            Lude.<$> (x Lude..:? "EngineVersion")
            Lude.<*> (x Lude..:? "MinAllocatedStorage")
            Lude.<*> (x Lude..:? "ReleaseStatus")
            Lude.<*> (x Lude..:? "IncludedAllocatedStorage")
            Lude.<*> (x Lude..:? "AvailabilityZones" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "MaxAllocatedStorage")
            Lude.<*> (x Lude..:? "ReplicationInstanceClass")
            Lude.<*> (x Lude..:? "DefaultAllocatedStorage")
            Lude.<*> (x Lude..:? "StorageType")
      )
