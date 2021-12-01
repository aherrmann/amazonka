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
-- Module      : Amazonka.AutoScalingPlans.Types.Datapoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AutoScalingPlans.Types.Datapoint where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a single value in the forecast data used for predictive
-- scaling.
--
-- /See:/ 'newDatapoint' smart constructor.
data Datapoint = Datapoint'
  { -- | The value of the data point.
    value :: Prelude.Maybe Prelude.Double,
    -- | The time stamp for the data point in UTC format.
    timestamp :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Datapoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'datapoint_value' - The value of the data point.
--
-- 'timestamp', 'datapoint_timestamp' - The time stamp for the data point in UTC format.
newDatapoint ::
  Datapoint
newDatapoint =
  Datapoint'
    { value = Prelude.Nothing,
      timestamp = Prelude.Nothing
    }

-- | The value of the data point.
datapoint_value :: Lens.Lens' Datapoint (Prelude.Maybe Prelude.Double)
datapoint_value = Lens.lens (\Datapoint' {value} -> value) (\s@Datapoint' {} a -> s {value = a} :: Datapoint)

-- | The time stamp for the data point in UTC format.
datapoint_timestamp :: Lens.Lens' Datapoint (Prelude.Maybe Prelude.UTCTime)
datapoint_timestamp = Lens.lens (\Datapoint' {timestamp} -> timestamp) (\s@Datapoint' {} a -> s {timestamp = a} :: Datapoint) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON Datapoint where
  parseJSON =
    Core.withObject
      "Datapoint"
      ( \x ->
          Datapoint'
            Prelude.<$> (x Core..:? "Value")
            Prelude.<*> (x Core..:? "Timestamp")
      )

instance Prelude.Hashable Datapoint where
  hashWithSalt salt' Datapoint' {..} =
    salt' `Prelude.hashWithSalt` timestamp
      `Prelude.hashWithSalt` value

instance Prelude.NFData Datapoint where
  rnf Datapoint' {..} =
    Prelude.rnf value
      `Prelude.seq` Prelude.rnf timestamp
