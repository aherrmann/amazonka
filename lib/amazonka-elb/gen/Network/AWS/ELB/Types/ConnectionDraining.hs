{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.ConnectionDraining
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.ConnectionDraining
  ( ConnectionDraining (..),

    -- * Smart constructor
    mkConnectionDraining,

    -- * Lenses
    cdEnabled,
    cdTimeout,
  )
where

import Network.AWS.ELB.Internal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Information about the @ConnectionDraining@ attribute.
--
-- /See:/ 'mkConnectionDraining' smart constructor.
data ConnectionDraining = ConnectionDraining'
  { -- | Specifies whether connection draining is enabled for the load balancer.
    enabled :: Lude.Bool,
    -- | The maximum time, in seconds, to keep the existing connections open before deregistering the instances.
    timeout :: Lude.Maybe Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ConnectionDraining' with the minimum fields required to make a request.
--
-- * 'enabled' - Specifies whether connection draining is enabled for the load balancer.
-- * 'timeout' - The maximum time, in seconds, to keep the existing connections open before deregistering the instances.
mkConnectionDraining ::
  -- | 'enabled'
  Lude.Bool ->
  ConnectionDraining
mkConnectionDraining pEnabled_ =
  ConnectionDraining' {enabled = pEnabled_, timeout = Lude.Nothing}

-- | Specifies whether connection draining is enabled for the load balancer.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdEnabled :: Lens.Lens' ConnectionDraining Lude.Bool
cdEnabled = Lens.lens (enabled :: ConnectionDraining -> Lude.Bool) (\s a -> s {enabled = a} :: ConnectionDraining)
{-# DEPRECATED cdEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The maximum time, in seconds, to keep the existing connections open before deregistering the instances.
--
-- /Note:/ Consider using 'timeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdTimeout :: Lens.Lens' ConnectionDraining (Lude.Maybe Lude.Int)
cdTimeout = Lens.lens (timeout :: ConnectionDraining -> Lude.Maybe Lude.Int) (\s a -> s {timeout = a} :: ConnectionDraining)
{-# DEPRECATED cdTimeout "Use generic-lens or generic-optics with 'timeout' instead." #-}

instance Lude.FromXML ConnectionDraining where
  parseXML x =
    ConnectionDraining'
      Lude.<$> (x Lude..@ "Enabled") Lude.<*> (x Lude..@? "Timeout")

instance Lude.ToQuery ConnectionDraining where
  toQuery ConnectionDraining' {..} =
    Lude.mconcat
      ["Enabled" Lude.=: enabled, "Timeout" Lude.=: timeout]
