{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.SuggesterStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.SuggesterStatus
  ( SuggesterStatus (..),

    -- * Smart constructor
    mkSuggesterStatus,

    -- * Lenses
    ssStatus,
    ssOptions,
  )
where

import Network.AWS.CloudSearch.Types.OptionStatus
import Network.AWS.CloudSearch.Types.Suggester
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The value of a @Suggester@ and its current status.
--
-- /See:/ 'mkSuggesterStatus' smart constructor.
data SuggesterStatus = SuggesterStatus'
  { status :: OptionStatus,
    options :: Suggester
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SuggesterStatus' with the minimum fields required to make a request.
--
-- * 'status' -
-- * 'options' -
mkSuggesterStatus ::
  -- | 'status'
  OptionStatus ->
  -- | 'options'
  Suggester ->
  SuggesterStatus
mkSuggesterStatus pStatus_ pOptions_ =
  SuggesterStatus' {status = pStatus_, options = pOptions_}

-- | Undocumented field.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssStatus :: Lens.Lens' SuggesterStatus OptionStatus
ssStatus = Lens.lens (status :: SuggesterStatus -> OptionStatus) (\s a -> s {status = a} :: SuggesterStatus)
{-# DEPRECATED ssStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'options' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssOptions :: Lens.Lens' SuggesterStatus Suggester
ssOptions = Lens.lens (options :: SuggesterStatus -> Suggester) (\s a -> s {options = a} :: SuggesterStatus)
{-# DEPRECATED ssOptions "Use generic-lens or generic-optics with 'options' instead." #-}

instance Lude.FromXML SuggesterStatus where
  parseXML x =
    SuggesterStatus'
      Lude.<$> (x Lude..@ "Status") Lude.<*> (x Lude..@ "Options")
