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
-- Module      : Amazonka.CloudSearchDomains.Types.FieldStats
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudSearchDomains.Types.FieldStats where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The statistics for a field calculated in the request.
--
-- /See:/ 'newFieldStats' smart constructor.
data FieldStats = FieldStats'
  { -- | The number of documents that do not contain a value in the specified
    -- field in the result set.
    missing :: Prelude.Maybe Prelude.Integer,
    -- | The maximum value found in the specified field in the result set.
    --
    -- If the field is numeric (@int@, @int-array@, @double@, or
    -- @double-array@), @max@ is the string representation of a
    -- double-precision 64-bit floating point value. If the field is @date@ or
    -- @date-array@, @max@ is the string representation of a date with the
    -- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
    -- yyyy-mm-ddTHH:mm:ss.SSSZ.
    max :: Prelude.Maybe Prelude.Text,
    -- | The sum of all field values in the result set squared.
    sumOfSquares :: Prelude.Maybe Prelude.Double,
    -- | The number of documents that contain a value in the specified field in
    -- the result set.
    count :: Prelude.Maybe Prelude.Integer,
    -- | The minimum value found in the specified field in the result set.
    --
    -- If the field is numeric (@int@, @int-array@, @double@, or
    -- @double-array@), @min@ is the string representation of a
    -- double-precision 64-bit floating point value. If the field is @date@ or
    -- @date-array@, @min@ is the string representation of a date with the
    -- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
    -- yyyy-mm-ddTHH:mm:ss.SSSZ.
    min :: Prelude.Maybe Prelude.Text,
    -- | The standard deviation of the values in the specified field in the
    -- result set.
    stddev :: Prelude.Maybe Prelude.Double,
    -- | The sum of the field values across the documents in the result set.
    -- @null@ for date fields.
    sum :: Prelude.Maybe Prelude.Double,
    -- | The average of the values found in the specified field in the result
    -- set.
    --
    -- If the field is numeric (@int@, @int-array@, @double@, or
    -- @double-array@), @mean@ is the string representation of a
    -- double-precision 64-bit floating point value. If the field is @date@ or
    -- @date-array@, @mean@ is the string representation of a date with the
    -- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
    -- yyyy-mm-ddTHH:mm:ss.SSSZ.
    mean :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FieldStats' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'missing', 'fieldStats_missing' - The number of documents that do not contain a value in the specified
-- field in the result set.
--
-- 'max', 'fieldStats_max' - The maximum value found in the specified field in the result set.
--
-- If the field is numeric (@int@, @int-array@, @double@, or
-- @double-array@), @max@ is the string representation of a
-- double-precision 64-bit floating point value. If the field is @date@ or
-- @date-array@, @max@ is the string representation of a date with the
-- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
-- yyyy-mm-ddTHH:mm:ss.SSSZ.
--
-- 'sumOfSquares', 'fieldStats_sumOfSquares' - The sum of all field values in the result set squared.
--
-- 'count', 'fieldStats_count' - The number of documents that contain a value in the specified field in
-- the result set.
--
-- 'min', 'fieldStats_min' - The minimum value found in the specified field in the result set.
--
-- If the field is numeric (@int@, @int-array@, @double@, or
-- @double-array@), @min@ is the string representation of a
-- double-precision 64-bit floating point value. If the field is @date@ or
-- @date-array@, @min@ is the string representation of a date with the
-- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
-- yyyy-mm-ddTHH:mm:ss.SSSZ.
--
-- 'stddev', 'fieldStats_stddev' - The standard deviation of the values in the specified field in the
-- result set.
--
-- 'sum', 'fieldStats_sum' - The sum of the field values across the documents in the result set.
-- @null@ for date fields.
--
-- 'mean', 'fieldStats_mean' - The average of the values found in the specified field in the result
-- set.
--
-- If the field is numeric (@int@, @int-array@, @double@, or
-- @double-array@), @mean@ is the string representation of a
-- double-precision 64-bit floating point value. If the field is @date@ or
-- @date-array@, @mean@ is the string representation of a date with the
-- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
-- yyyy-mm-ddTHH:mm:ss.SSSZ.
newFieldStats ::
  FieldStats
newFieldStats =
  FieldStats'
    { missing = Prelude.Nothing,
      max = Prelude.Nothing,
      sumOfSquares = Prelude.Nothing,
      count = Prelude.Nothing,
      min = Prelude.Nothing,
      stddev = Prelude.Nothing,
      sum = Prelude.Nothing,
      mean = Prelude.Nothing
    }

-- | The number of documents that do not contain a value in the specified
-- field in the result set.
fieldStats_missing :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Integer)
fieldStats_missing = Lens.lens (\FieldStats' {missing} -> missing) (\s@FieldStats' {} a -> s {missing = a} :: FieldStats)

-- | The maximum value found in the specified field in the result set.
--
-- If the field is numeric (@int@, @int-array@, @double@, or
-- @double-array@), @max@ is the string representation of a
-- double-precision 64-bit floating point value. If the field is @date@ or
-- @date-array@, @max@ is the string representation of a date with the
-- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
-- yyyy-mm-ddTHH:mm:ss.SSSZ.
fieldStats_max :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Text)
fieldStats_max = Lens.lens (\FieldStats' {max} -> max) (\s@FieldStats' {} a -> s {max = a} :: FieldStats)

-- | The sum of all field values in the result set squared.
fieldStats_sumOfSquares :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Double)
fieldStats_sumOfSquares = Lens.lens (\FieldStats' {sumOfSquares} -> sumOfSquares) (\s@FieldStats' {} a -> s {sumOfSquares = a} :: FieldStats)

-- | The number of documents that contain a value in the specified field in
-- the result set.
fieldStats_count :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Integer)
fieldStats_count = Lens.lens (\FieldStats' {count} -> count) (\s@FieldStats' {} a -> s {count = a} :: FieldStats)

-- | The minimum value found in the specified field in the result set.
--
-- If the field is numeric (@int@, @int-array@, @double@, or
-- @double-array@), @min@ is the string representation of a
-- double-precision 64-bit floating point value. If the field is @date@ or
-- @date-array@, @min@ is the string representation of a date with the
-- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
-- yyyy-mm-ddTHH:mm:ss.SSSZ.
fieldStats_min :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Text)
fieldStats_min = Lens.lens (\FieldStats' {min} -> min) (\s@FieldStats' {} a -> s {min = a} :: FieldStats)

-- | The standard deviation of the values in the specified field in the
-- result set.
fieldStats_stddev :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Double)
fieldStats_stddev = Lens.lens (\FieldStats' {stddev} -> stddev) (\s@FieldStats' {} a -> s {stddev = a} :: FieldStats)

-- | The sum of the field values across the documents in the result set.
-- @null@ for date fields.
fieldStats_sum :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Double)
fieldStats_sum = Lens.lens (\FieldStats' {sum} -> sum) (\s@FieldStats' {} a -> s {sum = a} :: FieldStats)

-- | The average of the values found in the specified field in the result
-- set.
--
-- If the field is numeric (@int@, @int-array@, @double@, or
-- @double-array@), @mean@ is the string representation of a
-- double-precision 64-bit floating point value. If the field is @date@ or
-- @date-array@, @mean@ is the string representation of a date with the
-- format specified in <http://tools.ietf.org/html/rfc3339 IETF RFC3339>:
-- yyyy-mm-ddTHH:mm:ss.SSSZ.
fieldStats_mean :: Lens.Lens' FieldStats (Prelude.Maybe Prelude.Text)
fieldStats_mean = Lens.lens (\FieldStats' {mean} -> mean) (\s@FieldStats' {} a -> s {mean = a} :: FieldStats)

instance Core.FromJSON FieldStats where
  parseJSON =
    Core.withObject
      "FieldStats"
      ( \x ->
          FieldStats'
            Prelude.<$> (x Core..:? "missing")
            Prelude.<*> (x Core..:? "max")
            Prelude.<*> (x Core..:? "sumOfSquares")
            Prelude.<*> (x Core..:? "count")
            Prelude.<*> (x Core..:? "min")
            Prelude.<*> (x Core..:? "stddev")
            Prelude.<*> (x Core..:? "sum")
            Prelude.<*> (x Core..:? "mean")
      )

instance Prelude.Hashable FieldStats where
  hashWithSalt _salt FieldStats' {..} =
    _salt `Prelude.hashWithSalt` missing
      `Prelude.hashWithSalt` max
      `Prelude.hashWithSalt` sumOfSquares
      `Prelude.hashWithSalt` count
      `Prelude.hashWithSalt` min
      `Prelude.hashWithSalt` stddev
      `Prelude.hashWithSalt` sum
      `Prelude.hashWithSalt` mean

instance Prelude.NFData FieldStats where
  rnf FieldStats' {..} =
    Prelude.rnf missing
      `Prelude.seq` Prelude.rnf max
      `Prelude.seq` Prelude.rnf sumOfSquares
      `Prelude.seq` Prelude.rnf count
      `Prelude.seq` Prelude.rnf min
      `Prelude.seq` Prelude.rnf stddev
      `Prelude.seq` Prelude.rnf sum
      `Prelude.seq` Prelude.rnf mean
