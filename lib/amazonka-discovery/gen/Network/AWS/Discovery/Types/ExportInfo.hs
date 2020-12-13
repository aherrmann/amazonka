{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.ExportInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ExportInfo
  ( ExportInfo (..),

    -- * Smart constructor
    mkExportInfo,

    -- * Lenses
    eiConfigurationsDownloadURL,
    eiRequestedStartTime,
    eiExportStatus,
    eiStatusMessage,
    eiRequestedEndTime,
    eiIsTruncated,
    eiExportRequestTime,
    eiExportId,
  )
where

import Network.AWS.Discovery.Types.ExportStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Information regarding the export status of discovered data. The value is an array of objects.
--
-- /See:/ 'mkExportInfo' smart constructor.
data ExportInfo = ExportInfo'
  { -- | A URL for an Amazon S3 bucket where you can review the exported data. The URL is displayed only if the export succeeded.
    configurationsDownloadURL :: Lude.Maybe Lude.Text,
    -- | The value of @startTime@ parameter in the @StartExportTask@ request. If no @startTime@ was requested, this result does not appear in @ExportInfo@ .
    requestedStartTime :: Lude.Maybe Lude.Timestamp,
    -- | The status of the data export job.
    exportStatus :: ExportStatus,
    -- | A status message provided for API callers.
    statusMessage :: Lude.Text,
    -- | The @endTime@ used in the @StartExportTask@ request. If no @endTime@ was requested, this result does not appear in @ExportInfo@ .
    requestedEndTime :: Lude.Maybe Lude.Timestamp,
    -- | If true, the export of agent information exceeded the size limit for a single export and the exported data is incomplete for the requested time range. To address this, select a smaller time range for the export by using @startDate@ and @endDate@ .
    isTruncated :: Lude.Maybe Lude.Bool,
    -- | The time that the data export was initiated.
    exportRequestTime :: Lude.Timestamp,
    -- | A unique identifier used to query an export.
    exportId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ExportInfo' with the minimum fields required to make a request.
--
-- * 'configurationsDownloadURL' - A URL for an Amazon S3 bucket where you can review the exported data. The URL is displayed only if the export succeeded.
-- * 'requestedStartTime' - The value of @startTime@ parameter in the @StartExportTask@ request. If no @startTime@ was requested, this result does not appear in @ExportInfo@ .
-- * 'exportStatus' - The status of the data export job.
-- * 'statusMessage' - A status message provided for API callers.
-- * 'requestedEndTime' - The @endTime@ used in the @StartExportTask@ request. If no @endTime@ was requested, this result does not appear in @ExportInfo@ .
-- * 'isTruncated' - If true, the export of agent information exceeded the size limit for a single export and the exported data is incomplete for the requested time range. To address this, select a smaller time range for the export by using @startDate@ and @endDate@ .
-- * 'exportRequestTime' - The time that the data export was initiated.
-- * 'exportId' - A unique identifier used to query an export.
mkExportInfo ::
  -- | 'exportStatus'
  ExportStatus ->
  -- | 'statusMessage'
  Lude.Text ->
  -- | 'exportRequestTime'
  Lude.Timestamp ->
  -- | 'exportId'
  Lude.Text ->
  ExportInfo
mkExportInfo
  pExportStatus_
  pStatusMessage_
  pExportRequestTime_
  pExportId_ =
    ExportInfo'
      { configurationsDownloadURL = Lude.Nothing,
        requestedStartTime = Lude.Nothing,
        exportStatus = pExportStatus_,
        statusMessage = pStatusMessage_,
        requestedEndTime = Lude.Nothing,
        isTruncated = Lude.Nothing,
        exportRequestTime = pExportRequestTime_,
        exportId = pExportId_
      }

-- | A URL for an Amazon S3 bucket where you can review the exported data. The URL is displayed only if the export succeeded.
--
-- /Note:/ Consider using 'configurationsDownloadURL' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiConfigurationsDownloadURL :: Lens.Lens' ExportInfo (Lude.Maybe Lude.Text)
eiConfigurationsDownloadURL = Lens.lens (configurationsDownloadURL :: ExportInfo -> Lude.Maybe Lude.Text) (\s a -> s {configurationsDownloadURL = a} :: ExportInfo)
{-# DEPRECATED eiConfigurationsDownloadURL "Use generic-lens or generic-optics with 'configurationsDownloadURL' instead." #-}

-- | The value of @startTime@ parameter in the @StartExportTask@ request. If no @startTime@ was requested, this result does not appear in @ExportInfo@ .
--
-- /Note:/ Consider using 'requestedStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiRequestedStartTime :: Lens.Lens' ExportInfo (Lude.Maybe Lude.Timestamp)
eiRequestedStartTime = Lens.lens (requestedStartTime :: ExportInfo -> Lude.Maybe Lude.Timestamp) (\s a -> s {requestedStartTime = a} :: ExportInfo)
{-# DEPRECATED eiRequestedStartTime "Use generic-lens or generic-optics with 'requestedStartTime' instead." #-}

-- | The status of the data export job.
--
-- /Note:/ Consider using 'exportStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiExportStatus :: Lens.Lens' ExportInfo ExportStatus
eiExportStatus = Lens.lens (exportStatus :: ExportInfo -> ExportStatus) (\s a -> s {exportStatus = a} :: ExportInfo)
{-# DEPRECATED eiExportStatus "Use generic-lens or generic-optics with 'exportStatus' instead." #-}

-- | A status message provided for API callers.
--
-- /Note:/ Consider using 'statusMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiStatusMessage :: Lens.Lens' ExportInfo Lude.Text
eiStatusMessage = Lens.lens (statusMessage :: ExportInfo -> Lude.Text) (\s a -> s {statusMessage = a} :: ExportInfo)
{-# DEPRECATED eiStatusMessage "Use generic-lens or generic-optics with 'statusMessage' instead." #-}

-- | The @endTime@ used in the @StartExportTask@ request. If no @endTime@ was requested, this result does not appear in @ExportInfo@ .
--
-- /Note:/ Consider using 'requestedEndTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiRequestedEndTime :: Lens.Lens' ExportInfo (Lude.Maybe Lude.Timestamp)
eiRequestedEndTime = Lens.lens (requestedEndTime :: ExportInfo -> Lude.Maybe Lude.Timestamp) (\s a -> s {requestedEndTime = a} :: ExportInfo)
{-# DEPRECATED eiRequestedEndTime "Use generic-lens or generic-optics with 'requestedEndTime' instead." #-}

-- | If true, the export of agent information exceeded the size limit for a single export and the exported data is incomplete for the requested time range. To address this, select a smaller time range for the export by using @startDate@ and @endDate@ .
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiIsTruncated :: Lens.Lens' ExportInfo (Lude.Maybe Lude.Bool)
eiIsTruncated = Lens.lens (isTruncated :: ExportInfo -> Lude.Maybe Lude.Bool) (\s a -> s {isTruncated = a} :: ExportInfo)
{-# DEPRECATED eiIsTruncated "Use generic-lens or generic-optics with 'isTruncated' instead." #-}

-- | The time that the data export was initiated.
--
-- /Note:/ Consider using 'exportRequestTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiExportRequestTime :: Lens.Lens' ExportInfo Lude.Timestamp
eiExportRequestTime = Lens.lens (exportRequestTime :: ExportInfo -> Lude.Timestamp) (\s a -> s {exportRequestTime = a} :: ExportInfo)
{-# DEPRECATED eiExportRequestTime "Use generic-lens or generic-optics with 'exportRequestTime' instead." #-}

-- | A unique identifier used to query an export.
--
-- /Note:/ Consider using 'exportId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiExportId :: Lens.Lens' ExportInfo Lude.Text
eiExportId = Lens.lens (exportId :: ExportInfo -> Lude.Text) (\s a -> s {exportId = a} :: ExportInfo)
{-# DEPRECATED eiExportId "Use generic-lens or generic-optics with 'exportId' instead." #-}

instance Lude.FromJSON ExportInfo where
  parseJSON =
    Lude.withObject
      "ExportInfo"
      ( \x ->
          ExportInfo'
            Lude.<$> (x Lude..:? "configurationsDownloadUrl")
            Lude.<*> (x Lude..:? "requestedStartTime")
            Lude.<*> (x Lude..: "exportStatus")
            Lude.<*> (x Lude..: "statusMessage")
            Lude.<*> (x Lude..:? "requestedEndTime")
            Lude.<*> (x Lude..:? "isTruncated")
            Lude.<*> (x Lude..: "exportRequestTime")
            Lude.<*> (x Lude..: "exportId")
      )
