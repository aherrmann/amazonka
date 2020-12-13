{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.DeregisterTargetFromMaintenanceWindow
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a target from a maintenance window.
module Network.AWS.SSM.DeregisterTargetFromMaintenanceWindow
  ( -- * Creating a request
    DeregisterTargetFromMaintenanceWindow (..),
    mkDeregisterTargetFromMaintenanceWindow,

    -- ** Request lenses
    dtfmwWindowTargetId,
    dtfmwWindowId,
    dtfmwSafe,

    -- * Destructuring the response
    DeregisterTargetFromMaintenanceWindowResponse (..),
    mkDeregisterTargetFromMaintenanceWindowResponse,

    -- ** Response lenses
    dtfmwrsWindowTargetId,
    dtfmwrsWindowId,
    dtfmwrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SSM.Types

-- | /See:/ 'mkDeregisterTargetFromMaintenanceWindow' smart constructor.
data DeregisterTargetFromMaintenanceWindow = DeregisterTargetFromMaintenanceWindow'
  { -- | The ID of the target definition to remove.
    windowTargetId :: Lude.Text,
    -- | The ID of the maintenance window the target should be removed from.
    windowId :: Lude.Text,
    -- | The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the maintenance window.
    safe :: Lude.Maybe Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeregisterTargetFromMaintenanceWindow' with the minimum fields required to make a request.
--
-- * 'windowTargetId' - The ID of the target definition to remove.
-- * 'windowId' - The ID of the maintenance window the target should be removed from.
-- * 'safe' - The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the maintenance window.
mkDeregisterTargetFromMaintenanceWindow ::
  -- | 'windowTargetId'
  Lude.Text ->
  -- | 'windowId'
  Lude.Text ->
  DeregisterTargetFromMaintenanceWindow
mkDeregisterTargetFromMaintenanceWindow pWindowTargetId_ pWindowId_ =
  DeregisterTargetFromMaintenanceWindow'
    { windowTargetId =
        pWindowTargetId_,
      windowId = pWindowId_,
      safe = Lude.Nothing
    }

-- | The ID of the target definition to remove.
--
-- /Note:/ Consider using 'windowTargetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtfmwWindowTargetId :: Lens.Lens' DeregisterTargetFromMaintenanceWindow Lude.Text
dtfmwWindowTargetId = Lens.lens (windowTargetId :: DeregisterTargetFromMaintenanceWindow -> Lude.Text) (\s a -> s {windowTargetId = a} :: DeregisterTargetFromMaintenanceWindow)
{-# DEPRECATED dtfmwWindowTargetId "Use generic-lens or generic-optics with 'windowTargetId' instead." #-}

-- | The ID of the maintenance window the target should be removed from.
--
-- /Note:/ Consider using 'windowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtfmwWindowId :: Lens.Lens' DeregisterTargetFromMaintenanceWindow Lude.Text
dtfmwWindowId = Lens.lens (windowId :: DeregisterTargetFromMaintenanceWindow -> Lude.Text) (\s a -> s {windowId = a} :: DeregisterTargetFromMaintenanceWindow)
{-# DEPRECATED dtfmwWindowId "Use generic-lens or generic-optics with 'windowId' instead." #-}

-- | The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the maintenance window.
--
-- /Note:/ Consider using 'safe' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtfmwSafe :: Lens.Lens' DeregisterTargetFromMaintenanceWindow (Lude.Maybe Lude.Bool)
dtfmwSafe = Lens.lens (safe :: DeregisterTargetFromMaintenanceWindow -> Lude.Maybe Lude.Bool) (\s a -> s {safe = a} :: DeregisterTargetFromMaintenanceWindow)
{-# DEPRECATED dtfmwSafe "Use generic-lens or generic-optics with 'safe' instead." #-}

instance Lude.AWSRequest DeregisterTargetFromMaintenanceWindow where
  type
    Rs DeregisterTargetFromMaintenanceWindow =
      DeregisterTargetFromMaintenanceWindowResponse
  request = Req.postJSON ssmService
  response =
    Res.receiveJSON
      ( \s h x ->
          DeregisterTargetFromMaintenanceWindowResponse'
            Lude.<$> (x Lude..?> "WindowTargetId")
            Lude.<*> (x Lude..?> "WindowId")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeregisterTargetFromMaintenanceWindow where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AmazonSSM.DeregisterTargetFromMaintenanceWindow" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeregisterTargetFromMaintenanceWindow where
  toJSON DeregisterTargetFromMaintenanceWindow' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("WindowTargetId" Lude..= windowTargetId),
            Lude.Just ("WindowId" Lude..= windowId),
            ("Safe" Lude..=) Lude.<$> safe
          ]
      )

instance Lude.ToPath DeregisterTargetFromMaintenanceWindow where
  toPath = Lude.const "/"

instance Lude.ToQuery DeregisterTargetFromMaintenanceWindow where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeregisterTargetFromMaintenanceWindowResponse' smart constructor.
data DeregisterTargetFromMaintenanceWindowResponse = DeregisterTargetFromMaintenanceWindowResponse'
  { -- | The ID of the removed target definition.
    windowTargetId :: Lude.Maybe Lude.Text,
    -- | The ID of the maintenance window the target was removed from.
    windowId :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeregisterTargetFromMaintenanceWindowResponse' with the minimum fields required to make a request.
--
-- * 'windowTargetId' - The ID of the removed target definition.
-- * 'windowId' - The ID of the maintenance window the target was removed from.
-- * 'responseStatus' - The response status code.
mkDeregisterTargetFromMaintenanceWindowResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeregisterTargetFromMaintenanceWindowResponse
mkDeregisterTargetFromMaintenanceWindowResponse pResponseStatus_ =
  DeregisterTargetFromMaintenanceWindowResponse'
    { windowTargetId =
        Lude.Nothing,
      windowId = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The ID of the removed target definition.
--
-- /Note:/ Consider using 'windowTargetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtfmwrsWindowTargetId :: Lens.Lens' DeregisterTargetFromMaintenanceWindowResponse (Lude.Maybe Lude.Text)
dtfmwrsWindowTargetId = Lens.lens (windowTargetId :: DeregisterTargetFromMaintenanceWindowResponse -> Lude.Maybe Lude.Text) (\s a -> s {windowTargetId = a} :: DeregisterTargetFromMaintenanceWindowResponse)
{-# DEPRECATED dtfmwrsWindowTargetId "Use generic-lens or generic-optics with 'windowTargetId' instead." #-}

-- | The ID of the maintenance window the target was removed from.
--
-- /Note:/ Consider using 'windowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtfmwrsWindowId :: Lens.Lens' DeregisterTargetFromMaintenanceWindowResponse (Lude.Maybe Lude.Text)
dtfmwrsWindowId = Lens.lens (windowId :: DeregisterTargetFromMaintenanceWindowResponse -> Lude.Maybe Lude.Text) (\s a -> s {windowId = a} :: DeregisterTargetFromMaintenanceWindowResponse)
{-# DEPRECATED dtfmwrsWindowId "Use generic-lens or generic-optics with 'windowId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtfmwrsResponseStatus :: Lens.Lens' DeregisterTargetFromMaintenanceWindowResponse Lude.Int
dtfmwrsResponseStatus = Lens.lens (responseStatus :: DeregisterTargetFromMaintenanceWindowResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeregisterTargetFromMaintenanceWindowResponse)
{-# DEPRECATED dtfmwrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
