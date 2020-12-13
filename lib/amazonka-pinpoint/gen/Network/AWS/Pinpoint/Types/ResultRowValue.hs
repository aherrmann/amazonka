{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ResultRowValue
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ResultRowValue
  ( ResultRowValue (..),

    -- * Smart constructor
    mkResultRowValue,

    -- * Lenses
    rrvValue,
    rrvKey,
    rrvType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Provides a single value and metadata about that value as part of an array of query results for a standard metric that applies to an application, campaign, or journey.
--
-- /See:/ 'mkResultRowValue' smart constructor.
data ResultRowValue = ResultRowValue'
  { -- | In a Values object, the value for the metric that the query retrieved data for. In a GroupedBys object, the value for the field that was used to group data in a result set that contains multiple results (Values objects).
    value :: Lude.Text,
    -- | The friendly name of the metric whose value is specified by the Value property.
    key :: Lude.Text,
    -- | The data type of the value specified by the Value property.
    type' :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ResultRowValue' with the minimum fields required to make a request.
--
-- * 'value' - In a Values object, the value for the metric that the query retrieved data for. In a GroupedBys object, the value for the field that was used to group data in a result set that contains multiple results (Values objects).
-- * 'key' - The friendly name of the metric whose value is specified by the Value property.
-- * 'type'' - The data type of the value specified by the Value property.
mkResultRowValue ::
  -- | 'value'
  Lude.Text ->
  -- | 'key'
  Lude.Text ->
  -- | 'type''
  Lude.Text ->
  ResultRowValue
mkResultRowValue pValue_ pKey_ pType_ =
  ResultRowValue' {value = pValue_, key = pKey_, type' = pType_}

-- | In a Values object, the value for the metric that the query retrieved data for. In a GroupedBys object, the value for the field that was used to group data in a result set that contains multiple results (Values objects).
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrvValue :: Lens.Lens' ResultRowValue Lude.Text
rrvValue = Lens.lens (value :: ResultRowValue -> Lude.Text) (\s a -> s {value = a} :: ResultRowValue)
{-# DEPRECATED rrvValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | The friendly name of the metric whose value is specified by the Value property.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrvKey :: Lens.Lens' ResultRowValue Lude.Text
rrvKey = Lens.lens (key :: ResultRowValue -> Lude.Text) (\s a -> s {key = a} :: ResultRowValue)
{-# DEPRECATED rrvKey "Use generic-lens or generic-optics with 'key' instead." #-}

-- | The data type of the value specified by the Value property.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrvType :: Lens.Lens' ResultRowValue Lude.Text
rrvType = Lens.lens (type' :: ResultRowValue -> Lude.Text) (\s a -> s {type' = a} :: ResultRowValue)
{-# DEPRECATED rrvType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Lude.FromJSON ResultRowValue where
  parseJSON =
    Lude.withObject
      "ResultRowValue"
      ( \x ->
          ResultRowValue'
            Lude.<$> (x Lude..: "Value")
            Lude.<*> (x Lude..: "Key")
            Lude.<*> (x Lude..: "Type")
      )
