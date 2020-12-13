{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceInfo
  ( ExportSnapshotRecordSourceInfo (..),

    -- * Smart constructor
    mkExportSnapshotRecordSourceInfo,

    -- * Lenses
    esrsiDiskSnapshotInfo,
    esrsiResourceType,
    esrsiArn,
    esrsiCreatedAt,
    esrsiFromResourceARN,
    esrsiName,
    esrsiInstanceSnapshotInfo,
    esrsiFromResourceName,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types.DiskSnapshotInfo
import Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceType
import Network.AWS.Lightsail.Types.InstanceSnapshotInfo
import qualified Network.AWS.Prelude as Lude

-- | Describes the source of an export snapshot record.
--
-- /See:/ 'mkExportSnapshotRecordSourceInfo' smart constructor.
data ExportSnapshotRecordSourceInfo = ExportSnapshotRecordSourceInfo'
  { -- | A list of objects describing a disk snapshot.
    diskSnapshotInfo :: Lude.Maybe DiskSnapshotInfo,
    -- | The Lightsail resource type (e.g., @InstanceSnapshot@ or @DiskSnapshot@ ).
    resourceType :: Lude.Maybe ExportSnapshotRecordSourceType,
    -- | The Amazon Resource Name (ARN) of the source instance or disk snapshot.
    arn :: Lude.Maybe Lude.Text,
    -- | The date when the source instance or disk snapshot was created.
    createdAt :: Lude.Maybe Lude.Timestamp,
    -- | The Amazon Resource Name (ARN) of the snapshot's source instance or disk.
    fromResourceARN :: Lude.Maybe Lude.Text,
    -- | The name of the source instance or disk snapshot.
    name :: Lude.Maybe Lude.Text,
    -- | A list of objects describing an instance snapshot.
    instanceSnapshotInfo :: Lude.Maybe InstanceSnapshotInfo,
    -- | The name of the snapshot's source instance or disk.
    fromResourceName :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ExportSnapshotRecordSourceInfo' with the minimum fields required to make a request.
--
-- * 'diskSnapshotInfo' - A list of objects describing a disk snapshot.
-- * 'resourceType' - The Lightsail resource type (e.g., @InstanceSnapshot@ or @DiskSnapshot@ ).
-- * 'arn' - The Amazon Resource Name (ARN) of the source instance or disk snapshot.
-- * 'createdAt' - The date when the source instance or disk snapshot was created.
-- * 'fromResourceARN' - The Amazon Resource Name (ARN) of the snapshot's source instance or disk.
-- * 'name' - The name of the source instance or disk snapshot.
-- * 'instanceSnapshotInfo' - A list of objects describing an instance snapshot.
-- * 'fromResourceName' - The name of the snapshot's source instance or disk.
mkExportSnapshotRecordSourceInfo ::
  ExportSnapshotRecordSourceInfo
mkExportSnapshotRecordSourceInfo =
  ExportSnapshotRecordSourceInfo'
    { diskSnapshotInfo = Lude.Nothing,
      resourceType = Lude.Nothing,
      arn = Lude.Nothing,
      createdAt = Lude.Nothing,
      fromResourceARN = Lude.Nothing,
      name = Lude.Nothing,
      instanceSnapshotInfo = Lude.Nothing,
      fromResourceName = Lude.Nothing
    }

-- | A list of objects describing a disk snapshot.
--
-- /Note:/ Consider using 'diskSnapshotInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiDiskSnapshotInfo :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe DiskSnapshotInfo)
esrsiDiskSnapshotInfo = Lens.lens (diskSnapshotInfo :: ExportSnapshotRecordSourceInfo -> Lude.Maybe DiskSnapshotInfo) (\s a -> s {diskSnapshotInfo = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiDiskSnapshotInfo "Use generic-lens or generic-optics with 'diskSnapshotInfo' instead." #-}

-- | The Lightsail resource type (e.g., @InstanceSnapshot@ or @DiskSnapshot@ ).
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiResourceType :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe ExportSnapshotRecordSourceType)
esrsiResourceType = Lens.lens (resourceType :: ExportSnapshotRecordSourceInfo -> Lude.Maybe ExportSnapshotRecordSourceType) (\s a -> s {resourceType = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiResourceType "Use generic-lens or generic-optics with 'resourceType' instead." #-}

-- | The Amazon Resource Name (ARN) of the source instance or disk snapshot.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiArn :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe Lude.Text)
esrsiArn = Lens.lens (arn :: ExportSnapshotRecordSourceInfo -> Lude.Maybe Lude.Text) (\s a -> s {arn = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The date when the source instance or disk snapshot was created.
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiCreatedAt :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe Lude.Timestamp)
esrsiCreatedAt = Lens.lens (createdAt :: ExportSnapshotRecordSourceInfo -> Lude.Maybe Lude.Timestamp) (\s a -> s {createdAt = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiCreatedAt "Use generic-lens or generic-optics with 'createdAt' instead." #-}

-- | The Amazon Resource Name (ARN) of the snapshot's source instance or disk.
--
-- /Note:/ Consider using 'fromResourceARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiFromResourceARN :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe Lude.Text)
esrsiFromResourceARN = Lens.lens (fromResourceARN :: ExportSnapshotRecordSourceInfo -> Lude.Maybe Lude.Text) (\s a -> s {fromResourceARN = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiFromResourceARN "Use generic-lens or generic-optics with 'fromResourceARN' instead." #-}

-- | The name of the source instance or disk snapshot.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiName :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe Lude.Text)
esrsiName = Lens.lens (name :: ExportSnapshotRecordSourceInfo -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | A list of objects describing an instance snapshot.
--
-- /Note:/ Consider using 'instanceSnapshotInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiInstanceSnapshotInfo :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe InstanceSnapshotInfo)
esrsiInstanceSnapshotInfo = Lens.lens (instanceSnapshotInfo :: ExportSnapshotRecordSourceInfo -> Lude.Maybe InstanceSnapshotInfo) (\s a -> s {instanceSnapshotInfo = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiInstanceSnapshotInfo "Use generic-lens or generic-optics with 'instanceSnapshotInfo' instead." #-}

-- | The name of the snapshot's source instance or disk.
--
-- /Note:/ Consider using 'fromResourceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esrsiFromResourceName :: Lens.Lens' ExportSnapshotRecordSourceInfo (Lude.Maybe Lude.Text)
esrsiFromResourceName = Lens.lens (fromResourceName :: ExportSnapshotRecordSourceInfo -> Lude.Maybe Lude.Text) (\s a -> s {fromResourceName = a} :: ExportSnapshotRecordSourceInfo)
{-# DEPRECATED esrsiFromResourceName "Use generic-lens or generic-optics with 'fromResourceName' instead." #-}

instance Lude.FromJSON ExportSnapshotRecordSourceInfo where
  parseJSON =
    Lude.withObject
      "ExportSnapshotRecordSourceInfo"
      ( \x ->
          ExportSnapshotRecordSourceInfo'
            Lude.<$> (x Lude..:? "diskSnapshotInfo")
            Lude.<*> (x Lude..:? "resourceType")
            Lude.<*> (x Lude..:? "arn")
            Lude.<*> (x Lude..:? "createdAt")
            Lude.<*> (x Lude..:? "fromResourceArn")
            Lude.<*> (x Lude..:? "name")
            Lude.<*> (x Lude..:? "instanceSnapshotInfo")
            Lude.<*> (x Lude..:? "fromResourceName")
      )
