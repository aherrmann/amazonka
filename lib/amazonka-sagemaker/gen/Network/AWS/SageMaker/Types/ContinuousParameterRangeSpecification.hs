{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ContinuousParameterRangeSpecification
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ContinuousParameterRangeSpecification
  ( ContinuousParameterRangeSpecification (..),

    -- * Smart constructor
    mkContinuousParameterRangeSpecification,

    -- * Lenses
    cprsMaxValue,
    cprsMinValue,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Defines the possible values for a continuous hyperparameter.
--
-- /See:/ 'mkContinuousParameterRangeSpecification' smart constructor.
data ContinuousParameterRangeSpecification = ContinuousParameterRangeSpecification'
  { -- | The maximum floating-point value allowed.
    maxValue :: Lude.Text,
    -- | The minimum floating-point value allowed.
    minValue :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ContinuousParameterRangeSpecification' with the minimum fields required to make a request.
--
-- * 'maxValue' - The maximum floating-point value allowed.
-- * 'minValue' - The minimum floating-point value allowed.
mkContinuousParameterRangeSpecification ::
  -- | 'maxValue'
  Lude.Text ->
  -- | 'minValue'
  Lude.Text ->
  ContinuousParameterRangeSpecification
mkContinuousParameterRangeSpecification pMaxValue_ pMinValue_ =
  ContinuousParameterRangeSpecification'
    { maxValue = pMaxValue_,
      minValue = pMinValue_
    }

-- | The maximum floating-point value allowed.
--
-- /Note:/ Consider using 'maxValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cprsMaxValue :: Lens.Lens' ContinuousParameterRangeSpecification Lude.Text
cprsMaxValue = Lens.lens (maxValue :: ContinuousParameterRangeSpecification -> Lude.Text) (\s a -> s {maxValue = a} :: ContinuousParameterRangeSpecification)
{-# DEPRECATED cprsMaxValue "Use generic-lens or generic-optics with 'maxValue' instead." #-}

-- | The minimum floating-point value allowed.
--
-- /Note:/ Consider using 'minValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cprsMinValue :: Lens.Lens' ContinuousParameterRangeSpecification Lude.Text
cprsMinValue = Lens.lens (minValue :: ContinuousParameterRangeSpecification -> Lude.Text) (\s a -> s {minValue = a} :: ContinuousParameterRangeSpecification)
{-# DEPRECATED cprsMinValue "Use generic-lens or generic-optics with 'minValue' instead." #-}

instance Lude.FromJSON ContinuousParameterRangeSpecification where
  parseJSON =
    Lude.withObject
      "ContinuousParameterRangeSpecification"
      ( \x ->
          ContinuousParameterRangeSpecification'
            Lude.<$> (x Lude..: "MaxValue") Lude.<*> (x Lude..: "MinValue")
      )

instance Lude.ToJSON ContinuousParameterRangeSpecification where
  toJSON ContinuousParameterRangeSpecification' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("MaxValue" Lude..= maxValue),
            Lude.Just ("MinValue" Lude..= minValue)
          ]
      )
