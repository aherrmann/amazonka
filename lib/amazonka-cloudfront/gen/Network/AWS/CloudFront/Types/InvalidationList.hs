{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.InvalidationList
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.InvalidationList
  ( InvalidationList (..),

    -- * Smart constructor
    mkInvalidationList,

    -- * Lenses
    ilQuantity,
    ilItems,
    ilMarker,
    ilMaxItems,
    ilNextMarker,
    ilIsTruncated,
  )
where

import Network.AWS.CloudFront.Types.InvalidationSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The @InvalidationList@ complex type describes the list of invalidation objects. For more information about invalidation, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html Invalidating Objects (Web Distributions Only)> in the /Amazon CloudFront Developer Guide/ .
--
-- /See:/ 'mkInvalidationList' smart constructor.
data InvalidationList = InvalidationList'
  { -- | The number of invalidation batches that were created by the current AWS account.
    quantity :: Lude.Int,
    -- | A complex type that contains one @InvalidationSummary@ element for each invalidation batch created by the current AWS account.
    items :: Lude.Maybe [InvalidationSummary],
    -- | The value that you provided for the @Marker@ request parameter.
    marker :: Lude.Text,
    -- | The value that you provided for the @MaxItems@ request parameter.
    maxItems :: Lude.Int,
    -- | If @IsTruncated@ is @true@ , this element is present and contains the value that you can use for the @Marker@ request parameter to continue listing your invalidation batches where they left off.
    nextMarker :: Lude.Maybe Lude.Text,
    -- | A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more invalidation batches in the list.
    isTruncated :: Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'InvalidationList' with the minimum fields required to make a request.
--
-- * 'quantity' - The number of invalidation batches that were created by the current AWS account.
-- * 'items' - A complex type that contains one @InvalidationSummary@ element for each invalidation batch created by the current AWS account.
-- * 'marker' - The value that you provided for the @Marker@ request parameter.
-- * 'maxItems' - The value that you provided for the @MaxItems@ request parameter.
-- * 'nextMarker' - If @IsTruncated@ is @true@ , this element is present and contains the value that you can use for the @Marker@ request parameter to continue listing your invalidation batches where they left off.
-- * 'isTruncated' - A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more invalidation batches in the list.
mkInvalidationList ::
  -- | 'quantity'
  Lude.Int ->
  -- | 'marker'
  Lude.Text ->
  -- | 'maxItems'
  Lude.Int ->
  -- | 'isTruncated'
  Lude.Bool ->
  InvalidationList
mkInvalidationList pQuantity_ pMarker_ pMaxItems_ pIsTruncated_ =
  InvalidationList'
    { quantity = pQuantity_,
      items = Lude.Nothing,
      marker = pMarker_,
      maxItems = pMaxItems_,
      nextMarker = Lude.Nothing,
      isTruncated = pIsTruncated_
    }

-- | The number of invalidation batches that were created by the current AWS account.
--
-- /Note:/ Consider using 'quantity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ilQuantity :: Lens.Lens' InvalidationList Lude.Int
ilQuantity = Lens.lens (quantity :: InvalidationList -> Lude.Int) (\s a -> s {quantity = a} :: InvalidationList)
{-# DEPRECATED ilQuantity "Use generic-lens or generic-optics with 'quantity' instead." #-}

-- | A complex type that contains one @InvalidationSummary@ element for each invalidation batch created by the current AWS account.
--
-- /Note:/ Consider using 'items' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ilItems :: Lens.Lens' InvalidationList (Lude.Maybe [InvalidationSummary])
ilItems = Lens.lens (items :: InvalidationList -> Lude.Maybe [InvalidationSummary]) (\s a -> s {items = a} :: InvalidationList)
{-# DEPRECATED ilItems "Use generic-lens or generic-optics with 'items' instead." #-}

-- | The value that you provided for the @Marker@ request parameter.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ilMarker :: Lens.Lens' InvalidationList Lude.Text
ilMarker = Lens.lens (marker :: InvalidationList -> Lude.Text) (\s a -> s {marker = a} :: InvalidationList)
{-# DEPRECATED ilMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The value that you provided for the @MaxItems@ request parameter.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ilMaxItems :: Lens.Lens' InvalidationList Lude.Int
ilMaxItems = Lens.lens (maxItems :: InvalidationList -> Lude.Int) (\s a -> s {maxItems = a} :: InvalidationList)
{-# DEPRECATED ilMaxItems "Use generic-lens or generic-optics with 'maxItems' instead." #-}

-- | If @IsTruncated@ is @true@ , this element is present and contains the value that you can use for the @Marker@ request parameter to continue listing your invalidation batches where they left off.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ilNextMarker :: Lens.Lens' InvalidationList (Lude.Maybe Lude.Text)
ilNextMarker = Lens.lens (nextMarker :: InvalidationList -> Lude.Maybe Lude.Text) (\s a -> s {nextMarker = a} :: InvalidationList)
{-# DEPRECATED ilNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

-- | A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more invalidation batches in the list.
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ilIsTruncated :: Lens.Lens' InvalidationList Lude.Bool
ilIsTruncated = Lens.lens (isTruncated :: InvalidationList -> Lude.Bool) (\s a -> s {isTruncated = a} :: InvalidationList)
{-# DEPRECATED ilIsTruncated "Use generic-lens or generic-optics with 'isTruncated' instead." #-}

instance Lude.FromXML InvalidationList where
  parseXML x =
    InvalidationList'
      Lude.<$> (x Lude..@ "Quantity")
      Lude.<*> ( x Lude..@? "Items" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "InvalidationSummary")
               )
      Lude.<*> (x Lude..@ "Marker")
      Lude.<*> (x Lude..@ "MaxItems")
      Lude.<*> (x Lude..@? "NextMarker")
      Lude.<*> (x Lude..@ "IsTruncated")
