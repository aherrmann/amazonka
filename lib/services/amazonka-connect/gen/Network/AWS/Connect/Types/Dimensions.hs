{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Dimensions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Dimensions where

import Network.AWS.Connect.Types.Channel
import Network.AWS.Connect.Types.QueueReference
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the dimensions for a set of metrics.
--
-- /See:/ 'newDimensions' smart constructor.
data Dimensions = Dimensions'
  { -- | The channel used for grouping and filters.
    channel :: Prelude.Maybe Channel,
    -- | Information about the queue for which metrics are returned.
    queue :: Prelude.Maybe QueueReference
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Dimensions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channel', 'dimensions_channel' - The channel used for grouping and filters.
--
-- 'queue', 'dimensions_queue' - Information about the queue for which metrics are returned.
newDimensions ::
  Dimensions
newDimensions =
  Dimensions'
    { channel = Prelude.Nothing,
      queue = Prelude.Nothing
    }

-- | The channel used for grouping and filters.
dimensions_channel :: Lens.Lens' Dimensions (Prelude.Maybe Channel)
dimensions_channel = Lens.lens (\Dimensions' {channel} -> channel) (\s@Dimensions' {} a -> s {channel = a} :: Dimensions)

-- | Information about the queue for which metrics are returned.
dimensions_queue :: Lens.Lens' Dimensions (Prelude.Maybe QueueReference)
dimensions_queue = Lens.lens (\Dimensions' {queue} -> queue) (\s@Dimensions' {} a -> s {queue = a} :: Dimensions)

instance Core.FromJSON Dimensions where
  parseJSON =
    Core.withObject
      "Dimensions"
      ( \x ->
          Dimensions'
            Prelude.<$> (x Core..:? "Channel")
            Prelude.<*> (x Core..:? "Queue")
      )

instance Prelude.Hashable Dimensions

instance Prelude.NFData Dimensions
