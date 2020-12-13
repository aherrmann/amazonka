{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.CreateThreatIntelSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the master account can use this operation.
module Network.AWS.GuardDuty.CreateThreatIntelSet
  ( -- * Creating a request
    CreateThreatIntelSet (..),
    mkCreateThreatIntelSet,

    -- ** Request lenses
    ctisClientToken,
    ctisLocation,
    ctisFormat,
    ctisActivate,
    ctisDetectorId,
    ctisName,
    ctisTags,

    -- * Destructuring the response
    CreateThreatIntelSetResponse (..),
    mkCreateThreatIntelSetResponse,

    -- ** Response lenses
    ctisrsThreatIntelSetId,
    ctisrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCreateThreatIntelSet' smart constructor.
data CreateThreatIntelSet = CreateThreatIntelSet'
  { -- | The idempotency token for the create request.
    clientToken :: Lude.Maybe Lude.Text,
    -- | The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
    location :: Lude.Text,
    -- | The format of the file that contains the ThreatIntelSet.
    format :: ThreatIntelSetFormat,
    -- | A Boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.
    activate :: Lude.Bool,
    -- | The unique ID of the detector of the GuardDuty account that you want to create a threatIntelSet for.
    detectorId :: Lude.Text,
    -- | A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.
    name :: Lude.Text,
    -- | The tags to be added to a new threat list resource.
    tags :: Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateThreatIntelSet' with the minimum fields required to make a request.
--
-- * 'clientToken' - The idempotency token for the create request.
-- * 'location' - The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
-- * 'format' - The format of the file that contains the ThreatIntelSet.
-- * 'activate' - A Boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.
-- * 'detectorId' - The unique ID of the detector of the GuardDuty account that you want to create a threatIntelSet for.
-- * 'name' - A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.
-- * 'tags' - The tags to be added to a new threat list resource.
mkCreateThreatIntelSet ::
  -- | 'location'
  Lude.Text ->
  -- | 'format'
  ThreatIntelSetFormat ->
  -- | 'activate'
  Lude.Bool ->
  -- | 'detectorId'
  Lude.Text ->
  -- | 'name'
  Lude.Text ->
  CreateThreatIntelSet
mkCreateThreatIntelSet
  pLocation_
  pFormat_
  pActivate_
  pDetectorId_
  pName_ =
    CreateThreatIntelSet'
      { clientToken = Lude.Nothing,
        location = pLocation_,
        format = pFormat_,
        activate = pActivate_,
        detectorId = pDetectorId_,
        name = pName_,
        tags = Lude.Nothing
      }

-- | The idempotency token for the create request.
--
-- /Note:/ Consider using 'clientToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisClientToken :: Lens.Lens' CreateThreatIntelSet (Lude.Maybe Lude.Text)
ctisClientToken = Lens.lens (clientToken :: CreateThreatIntelSet -> Lude.Maybe Lude.Text) (\s a -> s {clientToken = a} :: CreateThreatIntelSet)
{-# DEPRECATED ctisClientToken "Use generic-lens or generic-optics with 'clientToken' instead." #-}

-- | The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisLocation :: Lens.Lens' CreateThreatIntelSet Lude.Text
ctisLocation = Lens.lens (location :: CreateThreatIntelSet -> Lude.Text) (\s a -> s {location = a} :: CreateThreatIntelSet)
{-# DEPRECATED ctisLocation "Use generic-lens or generic-optics with 'location' instead." #-}

-- | The format of the file that contains the ThreatIntelSet.
--
-- /Note:/ Consider using 'format' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisFormat :: Lens.Lens' CreateThreatIntelSet ThreatIntelSetFormat
ctisFormat = Lens.lens (format :: CreateThreatIntelSet -> ThreatIntelSetFormat) (\s a -> s {format = a} :: CreateThreatIntelSet)
{-# DEPRECATED ctisFormat "Use generic-lens or generic-optics with 'format' instead." #-}

-- | A Boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.
--
-- /Note:/ Consider using 'activate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisActivate :: Lens.Lens' CreateThreatIntelSet Lude.Bool
ctisActivate = Lens.lens (activate :: CreateThreatIntelSet -> Lude.Bool) (\s a -> s {activate = a} :: CreateThreatIntelSet)
{-# DEPRECATED ctisActivate "Use generic-lens or generic-optics with 'activate' instead." #-}

-- | The unique ID of the detector of the GuardDuty account that you want to create a threatIntelSet for.
--
-- /Note:/ Consider using 'detectorId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisDetectorId :: Lens.Lens' CreateThreatIntelSet Lude.Text
ctisDetectorId = Lens.lens (detectorId :: CreateThreatIntelSet -> Lude.Text) (\s a -> s {detectorId = a} :: CreateThreatIntelSet)
{-# DEPRECATED ctisDetectorId "Use generic-lens or generic-optics with 'detectorId' instead." #-}

-- | A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisName :: Lens.Lens' CreateThreatIntelSet Lude.Text
ctisName = Lens.lens (name :: CreateThreatIntelSet -> Lude.Text) (\s a -> s {name = a} :: CreateThreatIntelSet)
{-# DEPRECATED ctisName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The tags to be added to a new threat list resource.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisTags :: Lens.Lens' CreateThreatIntelSet (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
ctisTags = Lens.lens (tags :: CreateThreatIntelSet -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {tags = a} :: CreateThreatIntelSet)
{-# DEPRECATED ctisTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Lude.AWSRequest CreateThreatIntelSet where
  type Rs CreateThreatIntelSet = CreateThreatIntelSetResponse
  request = Req.postJSON guardDutyService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateThreatIntelSetResponse'
            Lude.<$> (x Lude..:> "threatIntelSetId")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateThreatIntelSet where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateThreatIntelSet where
  toJSON CreateThreatIntelSet' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("clientToken" Lude..=) Lude.<$> clientToken,
            Lude.Just ("location" Lude..= location),
            Lude.Just ("format" Lude..= format),
            Lude.Just ("activate" Lude..= activate),
            Lude.Just ("name" Lude..= name),
            ("tags" Lude..=) Lude.<$> tags
          ]
      )

instance Lude.ToPath CreateThreatIntelSet where
  toPath CreateThreatIntelSet' {..} =
    Lude.mconcat
      ["/detector/", Lude.toBS detectorId, "/threatintelset"]

instance Lude.ToQuery CreateThreatIntelSet where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkCreateThreatIntelSetResponse' smart constructor.
data CreateThreatIntelSetResponse = CreateThreatIntelSetResponse'
  { -- | The ID of the ThreatIntelSet resource.
    threatIntelSetId :: Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateThreatIntelSetResponse' with the minimum fields required to make a request.
--
-- * 'threatIntelSetId' - The ID of the ThreatIntelSet resource.
-- * 'responseStatus' - The response status code.
mkCreateThreatIntelSetResponse ::
  -- | 'threatIntelSetId'
  Lude.Text ->
  -- | 'responseStatus'
  Lude.Int ->
  CreateThreatIntelSetResponse
mkCreateThreatIntelSetResponse pThreatIntelSetId_ pResponseStatus_ =
  CreateThreatIntelSetResponse'
    { threatIntelSetId =
        pThreatIntelSetId_,
      responseStatus = pResponseStatus_
    }

-- | The ID of the ThreatIntelSet resource.
--
-- /Note:/ Consider using 'threatIntelSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisrsThreatIntelSetId :: Lens.Lens' CreateThreatIntelSetResponse Lude.Text
ctisrsThreatIntelSetId = Lens.lens (threatIntelSetId :: CreateThreatIntelSetResponse -> Lude.Text) (\s a -> s {threatIntelSetId = a} :: CreateThreatIntelSetResponse)
{-# DEPRECATED ctisrsThreatIntelSetId "Use generic-lens or generic-optics with 'threatIntelSetId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctisrsResponseStatus :: Lens.Lens' CreateThreatIntelSetResponse Lude.Int
ctisrsResponseStatus = Lens.lens (responseStatus :: CreateThreatIntelSetResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateThreatIntelSetResponse)
{-# DEPRECATED ctisrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
