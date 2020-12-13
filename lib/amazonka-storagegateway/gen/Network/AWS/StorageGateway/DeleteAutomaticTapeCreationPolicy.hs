{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.DeleteAutomaticTapeCreationPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the automatic tape creation policy of a gateway. If you delete this policy, new virtual tapes must be created manually. Use the Amazon Resource Name (ARN) of the gateway in your request to remove the policy.
module Network.AWS.StorageGateway.DeleteAutomaticTapeCreationPolicy
  ( -- * Creating a request
    DeleteAutomaticTapeCreationPolicy (..),
    mkDeleteAutomaticTapeCreationPolicy,

    -- ** Request lenses
    datcpGatewayARN,

    -- * Destructuring the response
    DeleteAutomaticTapeCreationPolicyResponse (..),
    mkDeleteAutomaticTapeCreationPolicyResponse,

    -- ** Response lenses
    datcprsGatewayARN,
    datcprsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.StorageGateway.Types

-- | /See:/ 'mkDeleteAutomaticTapeCreationPolicy' smart constructor.
newtype DeleteAutomaticTapeCreationPolicy = DeleteAutomaticTapeCreationPolicy'
  { gatewayARN :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteAutomaticTapeCreationPolicy' with the minimum fields required to make a request.
--
-- * 'gatewayARN' -
mkDeleteAutomaticTapeCreationPolicy ::
  -- | 'gatewayARN'
  Lude.Text ->
  DeleteAutomaticTapeCreationPolicy
mkDeleteAutomaticTapeCreationPolicy pGatewayARN_ =
  DeleteAutomaticTapeCreationPolicy' {gatewayARN = pGatewayARN_}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datcpGatewayARN :: Lens.Lens' DeleteAutomaticTapeCreationPolicy Lude.Text
datcpGatewayARN = Lens.lens (gatewayARN :: DeleteAutomaticTapeCreationPolicy -> Lude.Text) (\s a -> s {gatewayARN = a} :: DeleteAutomaticTapeCreationPolicy)
{-# DEPRECATED datcpGatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead." #-}

instance Lude.AWSRequest DeleteAutomaticTapeCreationPolicy where
  type
    Rs DeleteAutomaticTapeCreationPolicy =
      DeleteAutomaticTapeCreationPolicyResponse
  request = Req.postJSON storageGatewayService
  response =
    Res.receiveJSON
      ( \s h x ->
          DeleteAutomaticTapeCreationPolicyResponse'
            Lude.<$> (x Lude..?> "GatewayARN") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeleteAutomaticTapeCreationPolicy where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "StorageGateway_20130630.DeleteAutomaticTapeCreationPolicy" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeleteAutomaticTapeCreationPolicy where
  toJSON DeleteAutomaticTapeCreationPolicy' {..} =
    Lude.object
      (Lude.catMaybes [Lude.Just ("GatewayARN" Lude..= gatewayARN)])

instance Lude.ToPath DeleteAutomaticTapeCreationPolicy where
  toPath = Lude.const "/"

instance Lude.ToQuery DeleteAutomaticTapeCreationPolicy where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteAutomaticTapeCreationPolicyResponse' smart constructor.
data DeleteAutomaticTapeCreationPolicyResponse = DeleteAutomaticTapeCreationPolicyResponse'
  { gatewayARN :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteAutomaticTapeCreationPolicyResponse' with the minimum fields required to make a request.
--
-- * 'gatewayARN' -
-- * 'responseStatus' - The response status code.
mkDeleteAutomaticTapeCreationPolicyResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeleteAutomaticTapeCreationPolicyResponse
mkDeleteAutomaticTapeCreationPolicyResponse pResponseStatus_ =
  DeleteAutomaticTapeCreationPolicyResponse'
    { gatewayARN =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datcprsGatewayARN :: Lens.Lens' DeleteAutomaticTapeCreationPolicyResponse (Lude.Maybe Lude.Text)
datcprsGatewayARN = Lens.lens (gatewayARN :: DeleteAutomaticTapeCreationPolicyResponse -> Lude.Maybe Lude.Text) (\s a -> s {gatewayARN = a} :: DeleteAutomaticTapeCreationPolicyResponse)
{-# DEPRECATED datcprsGatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
datcprsResponseStatus :: Lens.Lens' DeleteAutomaticTapeCreationPolicyResponse Lude.Int
datcprsResponseStatus = Lens.lens (responseStatus :: DeleteAutomaticTapeCreationPolicyResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeleteAutomaticTapeCreationPolicyResponse)
{-# DEPRECATED datcprsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
