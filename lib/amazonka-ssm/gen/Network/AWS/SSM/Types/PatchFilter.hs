{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchFilter
  ( PatchFilter (..),

    -- * Smart constructor
    mkPatchFilter,

    -- * Lenses
    pfValues,
    pfKey,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SSM.Types.PatchFilterKey

-- | Defines which patches should be included in a patch baseline.
--
-- A patch filter consists of a key and a set of values. The filter key is a patch property. For example, the available filter keys for WINDOWS are PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, and MSRC_SEVERITY. The filter values define a matching criterion for the patch property indicated by the key. For example, if the filter key is PRODUCT and the filter values are ["Office 2013", "Office 2016"], then the filter accepts all patches where product name is either "Office 2013" or "Office 2016". The filter values can be exact values for the patch property given as a key, or a wildcard (*), which matches all values.
-- You can view lists of valid values for the patch properties by running the @DescribePatchProperties@ command. For information about which patch properties can be used with each major operating system, see 'DescribePatchProperties' .
--
-- /See:/ 'mkPatchFilter' smart constructor.
data PatchFilter = PatchFilter'
  { -- | The value for the filter key.
    --
    -- Run the 'DescribePatchProperties' command to view lists of valid values for each key based on operating system type.
    values :: Lude.NonEmpty Lude.Text,
    -- | The key for the filter.
    --
    -- Run the 'DescribePatchProperties' command to view lists of valid keys for each operating system type.
    key :: PatchFilterKey
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PatchFilter' with the minimum fields required to make a request.
--
-- * 'values' - The value for the filter key.
--
-- Run the 'DescribePatchProperties' command to view lists of valid values for each key based on operating system type.
-- * 'key' - The key for the filter.
--
-- Run the 'DescribePatchProperties' command to view lists of valid keys for each operating system type.
mkPatchFilter ::
  -- | 'values'
  Lude.NonEmpty Lude.Text ->
  -- | 'key'
  PatchFilterKey ->
  PatchFilter
mkPatchFilter pValues_ pKey_ =
  PatchFilter' {values = pValues_, key = pKey_}

-- | The value for the filter key.
--
-- Run the 'DescribePatchProperties' command to view lists of valid values for each key based on operating system type.
--
-- /Note:/ Consider using 'values' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfValues :: Lens.Lens' PatchFilter (Lude.NonEmpty Lude.Text)
pfValues = Lens.lens (values :: PatchFilter -> Lude.NonEmpty Lude.Text) (\s a -> s {values = a} :: PatchFilter)
{-# DEPRECATED pfValues "Use generic-lens or generic-optics with 'values' instead." #-}

-- | The key for the filter.
--
-- Run the 'DescribePatchProperties' command to view lists of valid keys for each operating system type.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pfKey :: Lens.Lens' PatchFilter PatchFilterKey
pfKey = Lens.lens (key :: PatchFilter -> PatchFilterKey) (\s a -> s {key = a} :: PatchFilter)
{-# DEPRECATED pfKey "Use generic-lens or generic-optics with 'key' instead." #-}

instance Lude.FromJSON PatchFilter where
  parseJSON =
    Lude.withObject
      "PatchFilter"
      ( \x ->
          PatchFilter'
            Lude.<$> (x Lude..: "Values") Lude.<*> (x Lude..: "Key")
      )

instance Lude.ToJSON PatchFilter where
  toJSON PatchFilter' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Values" Lude..= values),
            Lude.Just ("Key" Lude..= key)
          ]
      )
