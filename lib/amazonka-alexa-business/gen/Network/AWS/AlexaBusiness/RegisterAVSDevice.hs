{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.RegisterAVSDevice
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).
module Network.AWS.AlexaBusiness.RegisterAVSDevice
  ( -- * Creating a request
    RegisterAVSDevice (..),
    mkRegisterAVSDevice,

    -- ** Request lenses
    ravsdClientId,
    ravsdAmazonId,
    ravsdUserCode,
    ravsdRoomARN,
    ravsdDeviceSerialNumber,
    ravsdProductId,

    -- * Destructuring the response
    RegisterAVSDeviceResponse (..),
    mkRegisterAVSDeviceResponse,

    -- ** Response lenses
    ravsdrsDeviceARN,
    ravsdrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkRegisterAVSDevice' smart constructor.
data RegisterAVSDevice = RegisterAVSDevice'
  { -- | The client ID of the OEM used for code-based linking authorization on an AVS device.
    clientId :: Lude.Text,
    -- | The device type ID for your AVS device generated by Amazon when the OEM creates a new product on Amazon's Developer Console.
    amazonId :: Lude.Text,
    -- | The code that is obtained after your AVS device has made a POST request to LWA as a part of the Device Authorization Request component of the OAuth code-based linking specification.
    userCode :: Lude.Text,
    -- | The ARN of the room with which to associate your AVS device.
    roomARN :: Lude.Maybe Lude.Text,
    -- | The key generated by the OEM that uniquely identifies a specified instance of your AVS device.
    deviceSerialNumber :: Lude.Maybe Lude.Text,
    -- | The product ID used to identify your AVS device during authorization.
    productId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RegisterAVSDevice' with the minimum fields required to make a request.
--
-- * 'clientId' - The client ID of the OEM used for code-based linking authorization on an AVS device.
-- * 'amazonId' - The device type ID for your AVS device generated by Amazon when the OEM creates a new product on Amazon's Developer Console.
-- * 'userCode' - The code that is obtained after your AVS device has made a POST request to LWA as a part of the Device Authorization Request component of the OAuth code-based linking specification.
-- * 'roomARN' - The ARN of the room with which to associate your AVS device.
-- * 'deviceSerialNumber' - The key generated by the OEM that uniquely identifies a specified instance of your AVS device.
-- * 'productId' - The product ID used to identify your AVS device during authorization.
mkRegisterAVSDevice ::
  -- | 'clientId'
  Lude.Text ->
  -- | 'amazonId'
  Lude.Text ->
  -- | 'userCode'
  Lude.Text ->
  -- | 'productId'
  Lude.Text ->
  RegisterAVSDevice
mkRegisterAVSDevice pClientId_ pAmazonId_ pUserCode_ pProductId_ =
  RegisterAVSDevice'
    { clientId = pClientId_,
      amazonId = pAmazonId_,
      userCode = pUserCode_,
      roomARN = Lude.Nothing,
      deviceSerialNumber = Lude.Nothing,
      productId = pProductId_
    }

-- | The client ID of the OEM used for code-based linking authorization on an AVS device.
--
-- /Note:/ Consider using 'clientId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdClientId :: Lens.Lens' RegisterAVSDevice Lude.Text
ravsdClientId = Lens.lens (clientId :: RegisterAVSDevice -> Lude.Text) (\s a -> s {clientId = a} :: RegisterAVSDevice)
{-# DEPRECATED ravsdClientId "Use generic-lens or generic-optics with 'clientId' instead." #-}

-- | The device type ID for your AVS device generated by Amazon when the OEM creates a new product on Amazon's Developer Console.
--
-- /Note:/ Consider using 'amazonId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdAmazonId :: Lens.Lens' RegisterAVSDevice Lude.Text
ravsdAmazonId = Lens.lens (amazonId :: RegisterAVSDevice -> Lude.Text) (\s a -> s {amazonId = a} :: RegisterAVSDevice)
{-# DEPRECATED ravsdAmazonId "Use generic-lens or generic-optics with 'amazonId' instead." #-}

-- | The code that is obtained after your AVS device has made a POST request to LWA as a part of the Device Authorization Request component of the OAuth code-based linking specification.
--
-- /Note:/ Consider using 'userCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdUserCode :: Lens.Lens' RegisterAVSDevice Lude.Text
ravsdUserCode = Lens.lens (userCode :: RegisterAVSDevice -> Lude.Text) (\s a -> s {userCode = a} :: RegisterAVSDevice)
{-# DEPRECATED ravsdUserCode "Use generic-lens or generic-optics with 'userCode' instead." #-}

-- | The ARN of the room with which to associate your AVS device.
--
-- /Note:/ Consider using 'roomARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdRoomARN :: Lens.Lens' RegisterAVSDevice (Lude.Maybe Lude.Text)
ravsdRoomARN = Lens.lens (roomARN :: RegisterAVSDevice -> Lude.Maybe Lude.Text) (\s a -> s {roomARN = a} :: RegisterAVSDevice)
{-# DEPRECATED ravsdRoomARN "Use generic-lens or generic-optics with 'roomARN' instead." #-}

-- | The key generated by the OEM that uniquely identifies a specified instance of your AVS device.
--
-- /Note:/ Consider using 'deviceSerialNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdDeviceSerialNumber :: Lens.Lens' RegisterAVSDevice (Lude.Maybe Lude.Text)
ravsdDeviceSerialNumber = Lens.lens (deviceSerialNumber :: RegisterAVSDevice -> Lude.Maybe Lude.Text) (\s a -> s {deviceSerialNumber = a} :: RegisterAVSDevice)
{-# DEPRECATED ravsdDeviceSerialNumber "Use generic-lens or generic-optics with 'deviceSerialNumber' instead." #-}

-- | The product ID used to identify your AVS device during authorization.
--
-- /Note:/ Consider using 'productId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdProductId :: Lens.Lens' RegisterAVSDevice Lude.Text
ravsdProductId = Lens.lens (productId :: RegisterAVSDevice -> Lude.Text) (\s a -> s {productId = a} :: RegisterAVSDevice)
{-# DEPRECATED ravsdProductId "Use generic-lens or generic-optics with 'productId' instead." #-}

instance Lude.AWSRequest RegisterAVSDevice where
  type Rs RegisterAVSDevice = RegisterAVSDeviceResponse
  request = Req.postJSON alexaBusinessService
  response =
    Res.receiveJSON
      ( \s h x ->
          RegisterAVSDeviceResponse'
            Lude.<$> (x Lude..?> "DeviceArn") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders RegisterAVSDevice where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AlexaForBusiness.RegisterAVSDevice" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON RegisterAVSDevice where
  toJSON RegisterAVSDevice' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("ClientId" Lude..= clientId),
            Lude.Just ("AmazonId" Lude..= amazonId),
            Lude.Just ("UserCode" Lude..= userCode),
            ("RoomArn" Lude..=) Lude.<$> roomARN,
            ("DeviceSerialNumber" Lude..=) Lude.<$> deviceSerialNumber,
            Lude.Just ("ProductId" Lude..= productId)
          ]
      )

instance Lude.ToPath RegisterAVSDevice where
  toPath = Lude.const "/"

instance Lude.ToQuery RegisterAVSDevice where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkRegisterAVSDeviceResponse' smart constructor.
data RegisterAVSDeviceResponse = RegisterAVSDeviceResponse'
  { -- | The ARN of the device.
    deviceARN :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RegisterAVSDeviceResponse' with the minimum fields required to make a request.
--
-- * 'deviceARN' - The ARN of the device.
-- * 'responseStatus' - The response status code.
mkRegisterAVSDeviceResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  RegisterAVSDeviceResponse
mkRegisterAVSDeviceResponse pResponseStatus_ =
  RegisterAVSDeviceResponse'
    { deviceARN = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The ARN of the device.
--
-- /Note:/ Consider using 'deviceARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdrsDeviceARN :: Lens.Lens' RegisterAVSDeviceResponse (Lude.Maybe Lude.Text)
ravsdrsDeviceARN = Lens.lens (deviceARN :: RegisterAVSDeviceResponse -> Lude.Maybe Lude.Text) (\s a -> s {deviceARN = a} :: RegisterAVSDeviceResponse)
{-# DEPRECATED ravsdrsDeviceARN "Use generic-lens or generic-optics with 'deviceARN' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ravsdrsResponseStatus :: Lens.Lens' RegisterAVSDeviceResponse Lude.Int
ravsdrsResponseStatus = Lens.lens (responseStatus :: RegisterAVSDeviceResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: RegisterAVSDeviceResponse)
{-# DEPRECATED ravsdrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
