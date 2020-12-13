{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.CreateHSM
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
-- Creates an uninitialized HSM instance.
-- There is an upfront fee charged for each HSM instance that you create with the @CreateHsm@ operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the 'DeleteHsm' operation, go to the <https://console.aws.amazon.com/support/home AWS Support Center> , create a new case, and select __Account and Billing Support__ .
-- /Important:/ It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the 'DescribeHsm' operation. The HSM is ready to be initialized when the status changes to @RUNNING@ .
module Network.AWS.CloudHSM.CreateHSM
  ( -- * Creating a request
    CreateHSM (..),
    mkCreateHSM,

    -- ** Request lenses
    chIAMRoleARN,
    chClientToken,
    chSubscriptionType,
    chSubnetId,
    chSyslogIP,
    chSSHKey,
    chExternalId,
    chEniIP,

    -- * Destructuring the response
    CreateHSMResponse (..),
    mkCreateHSMResponse,

    -- ** Response lenses
    chsmrsHSMARN,
    chsmrsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Contains the inputs for the @CreateHsm@ operation.
--
-- /See:/ 'mkCreateHSM' smart constructor.
data CreateHSM = CreateHSM'
  { -- | The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.
    iamRoleARN :: Lude.Text,
    -- | A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.
    clientToken :: Lude.Maybe Lude.Text,
    subscriptionType :: SubscriptionType,
    -- | The identifier of the subnet in your VPC in which to place the HSM.
    subnetId :: Lude.Text,
    -- | The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
    syslogIP :: Lude.Maybe Lude.Text,
    -- | The SSH public key to install on the HSM.
    sshKey :: Lude.Text,
    -- | The external ID from @IamRoleArn@ , if present.
    externalId :: Lude.Maybe Lude.Text,
    -- | The IP address to assign to the HSM's ENI.
    --
    -- If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.
    eniIP :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateHSM' with the minimum fields required to make a request.
--
-- * 'iamRoleARN' - The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.
-- * 'clientToken' - A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.
-- * 'subscriptionType' -
-- * 'subnetId' - The identifier of the subnet in your VPC in which to place the HSM.
-- * 'syslogIP' - The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
-- * 'sshKey' - The SSH public key to install on the HSM.
-- * 'externalId' - The external ID from @IamRoleArn@ , if present.
-- * 'eniIP' - The IP address to assign to the HSM's ENI.
--
-- If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.
mkCreateHSM ::
  -- | 'iamRoleARN'
  Lude.Text ->
  -- | 'subscriptionType'
  SubscriptionType ->
  -- | 'subnetId'
  Lude.Text ->
  -- | 'sshKey'
  Lude.Text ->
  CreateHSM
mkCreateHSM pIAMRoleARN_ pSubscriptionType_ pSubnetId_ pSSHKey_ =
  CreateHSM'
    { iamRoleARN = pIAMRoleARN_,
      clientToken = Lude.Nothing,
      subscriptionType = pSubscriptionType_,
      subnetId = pSubnetId_,
      syslogIP = Lude.Nothing,
      sshKey = pSSHKey_,
      externalId = Lude.Nothing,
      eniIP = Lude.Nothing
    }

-- | The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.
--
-- /Note:/ Consider using 'iamRoleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chIAMRoleARN :: Lens.Lens' CreateHSM Lude.Text
chIAMRoleARN = Lens.lens (iamRoleARN :: CreateHSM -> Lude.Text) (\s a -> s {iamRoleARN = a} :: CreateHSM)
{-# DEPRECATED chIAMRoleARN "Use generic-lens or generic-optics with 'iamRoleARN' instead." #-}

-- | A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chClientToken :: Lens.Lens' CreateHSM (Lude.Maybe Lude.Text)
chClientToken = Lens.lens (clientToken :: CreateHSM -> Lude.Maybe Lude.Text) (\s a -> s {clientToken = a} :: CreateHSM)
{-# DEPRECATED chClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'subscriptionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chSubscriptionType :: Lens.Lens' CreateHSM SubscriptionType
chSubscriptionType = Lens.lens (subscriptionType :: CreateHSM -> SubscriptionType) (\s a -> s {subscriptionType = a} :: CreateHSM)
{-# DEPRECATED chSubscriptionType "Use generic-lens or generic-optics with 'subscriptionType' instead." #-}

-- | The identifier of the subnet in your VPC in which to place the HSM.
--
-- /Note:/ Consider using 'subnetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chSubnetId :: Lens.Lens' CreateHSM Lude.Text
chSubnetId = Lens.lens (subnetId :: CreateHSM -> Lude.Text) (\s a -> s {subnetId = a} :: CreateHSM)
{-# DEPRECATED chSubnetId "Use generic-lens or generic-optics with 'subnetId' instead." #-}

-- | The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
--
-- /Note:/ Consider using 'syslogIP' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chSyslogIP :: Lens.Lens' CreateHSM (Lude.Maybe Lude.Text)
chSyslogIP = Lens.lens (syslogIP :: CreateHSM -> Lude.Maybe Lude.Text) (\s a -> s {syslogIP = a} :: CreateHSM)
{-# DEPRECATED chSyslogIP "Use generic-lens or generic-optics with 'syslogIP' instead." #-}

-- | The SSH public key to install on the HSM.
--
-- /Note:/ Consider using 'sshKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chSSHKey :: Lens.Lens' CreateHSM Lude.Text
chSSHKey = Lens.lens (sshKey :: CreateHSM -> Lude.Text) (\s a -> s {sshKey = a} :: CreateHSM)
{-# DEPRECATED chSSHKey "Use generic-lens or generic-optics with 'sshKey' instead." #-}

-- | The external ID from @IamRoleArn@ , if present.
--
-- /Note:/ Consider using 'externalId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chExternalId :: Lens.Lens' CreateHSM (Lude.Maybe Lude.Text)
chExternalId = Lens.lens (externalId :: CreateHSM -> Lude.Maybe Lude.Text) (\s a -> s {externalId = a} :: CreateHSM)
{-# DEPRECATED chExternalId "Use generic-lens or generic-optics with 'externalId' instead." #-}

-- | The IP address to assign to the HSM's ENI.
--
-- If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.
--
-- /Note:/ Consider using 'eniIP' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chEniIP :: Lens.Lens' CreateHSM (Lude.Maybe Lude.Text)
chEniIP = Lens.lens (eniIP :: CreateHSM -> Lude.Maybe Lude.Text) (\s a -> s {eniIP = a} :: CreateHSM)
{-# DEPRECATED chEniIP "Use generic-lens or generic-optics with 'eniIP' instead." #-}

instance Lude.AWSRequest CreateHSM where
  type Rs CreateHSM = CreateHSMResponse
  request = Req.postJSON cloudHSMService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateHSMResponse'
            Lude.<$> (x Lude..?> "HsmArn") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateHSM where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("CloudHsmFrontendService.CreateHsm" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateHSM where
  toJSON CreateHSM' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("IamRoleArn" Lude..= iamRoleARN),
            ("ClientToken" Lude..=) Lude.<$> clientToken,
            Lude.Just ("SubscriptionType" Lude..= subscriptionType),
            Lude.Just ("SubnetId" Lude..= subnetId),
            ("SyslogIp" Lude..=) Lude.<$> syslogIP,
            Lude.Just ("SshKey" Lude..= sshKey),
            ("ExternalId" Lude..=) Lude.<$> externalId,
            ("EniIp" Lude..=) Lude.<$> eniIP
          ]
      )

instance Lude.ToPath CreateHSM where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateHSM where
  toQuery = Lude.const Lude.mempty

-- | Contains the output of the @CreateHsm@ operation.
--
-- /See:/ 'mkCreateHSMResponse' smart constructor.
data CreateHSMResponse = CreateHSMResponse'
  { -- | The ARN of the HSM.
    hsmARN :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateHSMResponse' with the minimum fields required to make a request.
--
-- * 'hsmARN' - The ARN of the HSM.
-- * 'responseStatus' - The response status code.
mkCreateHSMResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateHSMResponse
mkCreateHSMResponse pResponseStatus_ =
  CreateHSMResponse'
    { hsmARN = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The ARN of the HSM.
--
-- /Note:/ Consider using 'hsmARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chsmrsHSMARN :: Lens.Lens' CreateHSMResponse (Lude.Maybe Lude.Text)
chsmrsHSMARN = Lens.lens (hsmARN :: CreateHSMResponse -> Lude.Maybe Lude.Text) (\s a -> s {hsmARN = a} :: CreateHSMResponse)
{-# DEPRECATED chsmrsHSMARN "Use generic-lens or generic-optics with 'hsmARN' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chsmrsResponseStatus :: Lens.Lens' CreateHSMResponse Lude.Int
chsmrsResponseStatus = Lens.lens (responseStatus :: CreateHSMResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateHSMResponse)
{-# DEPRECATED chsmrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
