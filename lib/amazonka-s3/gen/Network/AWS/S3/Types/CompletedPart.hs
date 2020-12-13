{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CompletedPart
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.CompletedPart
  ( CompletedPart (..),

    -- * Smart constructor
    mkCompletedPart,

    -- * Lenses
    cpETag,
    cpPartNumber,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.S3.Internal

-- | Details of the parts that were uploaded.
--
-- /See:/ 'mkCompletedPart' smart constructor.
data CompletedPart = CompletedPart'
  { -- | Entity tag returned when the part was uploaded.
    eTag :: ETag,
    -- | Part number that identifies the part. This is a positive integer between 1 and 10,000.
    partNumber :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CompletedPart' with the minimum fields required to make a request.
--
-- * 'eTag' - Entity tag returned when the part was uploaded.
-- * 'partNumber' - Part number that identifies the part. This is a positive integer between 1 and 10,000.
mkCompletedPart ::
  -- | 'eTag'
  ETag ->
  -- | 'partNumber'
  Lude.Int ->
  CompletedPart
mkCompletedPart pETag_ pPartNumber_ =
  CompletedPart' {eTag = pETag_, partNumber = pPartNumber_}

-- | Entity tag returned when the part was uploaded.
--
-- /Note:/ Consider using 'eTag' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpETag :: Lens.Lens' CompletedPart ETag
cpETag = Lens.lens (eTag :: CompletedPart -> ETag) (\s a -> s {eTag = a} :: CompletedPart)
{-# DEPRECATED cpETag "Use generic-lens or generic-optics with 'eTag' instead." #-}

-- | Part number that identifies the part. This is a positive integer between 1 and 10,000.
--
-- /Note:/ Consider using 'partNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpPartNumber :: Lens.Lens' CompletedPart Lude.Int
cpPartNumber = Lens.lens (partNumber :: CompletedPart -> Lude.Int) (\s a -> s {partNumber = a} :: CompletedPart)
{-# DEPRECATED cpPartNumber "Use generic-lens or generic-optics with 'partNumber' instead." #-}

instance Lude.ToXML CompletedPart where
  toXML CompletedPart' {..} =
    Lude.mconcat
      ["ETag" Lude.@= eTag, "PartNumber" Lude.@= partNumber]
