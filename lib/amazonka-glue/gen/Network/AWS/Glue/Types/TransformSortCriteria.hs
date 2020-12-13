{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TransformSortCriteria
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformSortCriteria
  ( TransformSortCriteria (..),

    -- * Smart constructor
    mkTransformSortCriteria,

    -- * Lenses
    tscSortDirection,
    tscColumn,
  )
where

import Network.AWS.Glue.Types.SortDirectionType
import Network.AWS.Glue.Types.TransformSortColumnType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The sorting criteria that are associated with the machine learning transform.
--
-- /See:/ 'mkTransformSortCriteria' smart constructor.
data TransformSortCriteria = TransformSortCriteria'
  { -- | The sort direction to be used in the sorting criteria that are associated with the machine learning transform.
    sortDirection :: SortDirectionType,
    -- | The column to be used in the sorting criteria that are associated with the machine learning transform.
    column :: TransformSortColumnType
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TransformSortCriteria' with the minimum fields required to make a request.
--
-- * 'sortDirection' - The sort direction to be used in the sorting criteria that are associated with the machine learning transform.
-- * 'column' - The column to be used in the sorting criteria that are associated with the machine learning transform.
mkTransformSortCriteria ::
  -- | 'sortDirection'
  SortDirectionType ->
  -- | 'column'
  TransformSortColumnType ->
  TransformSortCriteria
mkTransformSortCriteria pSortDirection_ pColumn_ =
  TransformSortCriteria'
    { sortDirection = pSortDirection_,
      column = pColumn_
    }

-- | The sort direction to be used in the sorting criteria that are associated with the machine learning transform.
--
-- /Note:/ Consider using 'sortDirection' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tscSortDirection :: Lens.Lens' TransformSortCriteria SortDirectionType
tscSortDirection = Lens.lens (sortDirection :: TransformSortCriteria -> SortDirectionType) (\s a -> s {sortDirection = a} :: TransformSortCriteria)
{-# DEPRECATED tscSortDirection "Use generic-lens or generic-optics with 'sortDirection' instead." #-}

-- | The column to be used in the sorting criteria that are associated with the machine learning transform.
--
-- /Note:/ Consider using 'column' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tscColumn :: Lens.Lens' TransformSortCriteria TransformSortColumnType
tscColumn = Lens.lens (column :: TransformSortCriteria -> TransformSortColumnType) (\s a -> s {column = a} :: TransformSortCriteria)
{-# DEPRECATED tscColumn "Use generic-lens or generic-optics with 'column' instead." #-}

instance Lude.ToJSON TransformSortCriteria where
  toJSON TransformSortCriteria' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("SortDirection" Lude..= sortDirection),
            Lude.Just ("Column" Lude..= column)
          ]
      )
