{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.Listener
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.Listener
  ( Listener (..),

    -- * Smart constructor
    mkListener,

    -- * Lenses
    lInstanceProtocol,
    lInstancePort,
    lLoadBalancerPort,
    lProtocol,
    lSSLCertificateId,
  )
where

import Network.AWS.ELB.Internal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Information about a listener.
--
-- For information about the protocols and the ports supported by Elastic Load Balancing, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html Listeners for Your Classic Load Balancer> in the /Classic Load Balancers Guide/ .
--
-- /See:/ 'mkListener' smart constructor.
data Listener = Listener'
  { -- | The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.
    --
    -- If the front-end protocol is TCP or SSL, the back-end protocol must be TCP or SSL. If the front-end protocol is HTTP or HTTPS, the back-end protocol must be HTTP or HTTPS.
    -- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is secure, (HTTPS or SSL), the listener's @InstanceProtocol@ must also be secure.
    -- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is HTTP or TCP, the listener's @InstanceProtocol@ must be HTTP or TCP.
    instanceProtocol :: Lude.Maybe Lude.Text,
    -- | The port on which the instance is listening.
    instancePort :: Lude.Natural,
    -- | The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.
    loadBalancerPort :: Lude.Int,
    -- | The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.
    protocol :: Lude.Text,
    -- | The Amazon Resource Name (ARN) of the server certificate.
    sslCertificateId :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Listener' with the minimum fields required to make a request.
--
-- * 'instanceProtocol' - The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.
--
-- If the front-end protocol is TCP or SSL, the back-end protocol must be TCP or SSL. If the front-end protocol is HTTP or HTTPS, the back-end protocol must be HTTP or HTTPS.
-- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is secure, (HTTPS or SSL), the listener's @InstanceProtocol@ must also be secure.
-- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is HTTP or TCP, the listener's @InstanceProtocol@ must be HTTP or TCP.
-- * 'instancePort' - The port on which the instance is listening.
-- * 'loadBalancerPort' - The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.
-- * 'protocol' - The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.
-- * 'sslCertificateId' - The Amazon Resource Name (ARN) of the server certificate.
mkListener ::
  -- | 'instancePort'
  Lude.Natural ->
  -- | 'loadBalancerPort'
  Lude.Int ->
  -- | 'protocol'
  Lude.Text ->
  Listener
mkListener pInstancePort_ pLoadBalancerPort_ pProtocol_ =
  Listener'
    { instanceProtocol = Lude.Nothing,
      instancePort = pInstancePort_,
      loadBalancerPort = pLoadBalancerPort_,
      protocol = pProtocol_,
      sslCertificateId = Lude.Nothing
    }

-- | The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.
--
-- If the front-end protocol is TCP or SSL, the back-end protocol must be TCP or SSL. If the front-end protocol is HTTP or HTTPS, the back-end protocol must be HTTP or HTTPS.
-- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is secure, (HTTPS or SSL), the listener's @InstanceProtocol@ must also be secure.
-- If there is another listener with the same @InstancePort@ whose @InstanceProtocol@ is HTTP or TCP, the listener's @InstanceProtocol@ must be HTTP or TCP.
--
-- /Note:/ Consider using 'instanceProtocol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lInstanceProtocol :: Lens.Lens' Listener (Lude.Maybe Lude.Text)
lInstanceProtocol = Lens.lens (instanceProtocol :: Listener -> Lude.Maybe Lude.Text) (\s a -> s {instanceProtocol = a} :: Listener)
{-# DEPRECATED lInstanceProtocol "Use generic-lens or generic-optics with 'instanceProtocol' instead." #-}

-- | The port on which the instance is listening.
--
-- /Note:/ Consider using 'instancePort' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lInstancePort :: Lens.Lens' Listener Lude.Natural
lInstancePort = Lens.lens (instancePort :: Listener -> Lude.Natural) (\s a -> s {instancePort = a} :: Listener)
{-# DEPRECATED lInstancePort "Use generic-lens or generic-optics with 'instancePort' instead." #-}

-- | The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.
--
-- /Note:/ Consider using 'loadBalancerPort' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lLoadBalancerPort :: Lens.Lens' Listener Lude.Int
lLoadBalancerPort = Lens.lens (loadBalancerPort :: Listener -> Lude.Int) (\s a -> s {loadBalancerPort = a} :: Listener)
{-# DEPRECATED lLoadBalancerPort "Use generic-lens or generic-optics with 'loadBalancerPort' instead." #-}

-- | The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.
--
-- /Note:/ Consider using 'protocol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lProtocol :: Lens.Lens' Listener Lude.Text
lProtocol = Lens.lens (protocol :: Listener -> Lude.Text) (\s a -> s {protocol = a} :: Listener)
{-# DEPRECATED lProtocol "Use generic-lens or generic-optics with 'protocol' instead." #-}

-- | The Amazon Resource Name (ARN) of the server certificate.
--
-- /Note:/ Consider using 'sslCertificateId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lSSLCertificateId :: Lens.Lens' Listener (Lude.Maybe Lude.Text)
lSSLCertificateId = Lens.lens (sslCertificateId :: Listener -> Lude.Maybe Lude.Text) (\s a -> s {sslCertificateId = a} :: Listener)
{-# DEPRECATED lSSLCertificateId "Use generic-lens or generic-optics with 'sslCertificateId' instead." #-}

instance Lude.FromXML Listener where
  parseXML x =
    Listener'
      Lude.<$> (x Lude..@? "InstanceProtocol")
      Lude.<*> (x Lude..@ "InstancePort")
      Lude.<*> (x Lude..@ "LoadBalancerPort")
      Lude.<*> (x Lude..@ "Protocol")
      Lude.<*> (x Lude..@? "SSLCertificateId")

instance Lude.ToQuery Listener where
  toQuery Listener' {..} =
    Lude.mconcat
      [ "InstanceProtocol" Lude.=: instanceProtocol,
        "InstancePort" Lude.=: instancePort,
        "LoadBalancerPort" Lude.=: loadBalancerPort,
        "Protocol" Lude.=: protocol,
        "SSLCertificateId" Lude.=: sslCertificateId
      ]
