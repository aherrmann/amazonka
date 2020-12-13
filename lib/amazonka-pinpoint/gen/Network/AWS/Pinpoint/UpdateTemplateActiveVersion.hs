{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.UpdateTemplateActiveVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the status of a specific version of a message template to /active/ .
module Network.AWS.Pinpoint.UpdateTemplateActiveVersion
  ( -- * Creating a request
    UpdateTemplateActiveVersion (..),
    mkUpdateTemplateActiveVersion,

    -- ** Request lenses
    utavTemplateName,
    utavTemplateActiveVersionRequest,
    utavTemplateType,

    -- * Destructuring the response
    UpdateTemplateActiveVersionResponse (..),
    mkUpdateTemplateActiveVersionResponse,

    -- ** Response lenses
    utavrsMessageBody,
    utavrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkUpdateTemplateActiveVersion' smart constructor.
data UpdateTemplateActiveVersion = UpdateTemplateActiveVersion'
  { -- | The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
    templateName :: Lude.Text,
    templateActiveVersionRequest :: TemplateActiveVersionRequest,
    -- | The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.
    templateType :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateTemplateActiveVersion' with the minimum fields required to make a request.
--
-- * 'templateName' - The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
-- * 'templateActiveVersionRequest' -
-- * 'templateType' - The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.
mkUpdateTemplateActiveVersion ::
  -- | 'templateName'
  Lude.Text ->
  -- | 'templateActiveVersionRequest'
  TemplateActiveVersionRequest ->
  -- | 'templateType'
  Lude.Text ->
  UpdateTemplateActiveVersion
mkUpdateTemplateActiveVersion
  pTemplateName_
  pTemplateActiveVersionRequest_
  pTemplateType_ =
    UpdateTemplateActiveVersion'
      { templateName = pTemplateName_,
        templateActiveVersionRequest = pTemplateActiveVersionRequest_,
        templateType = pTemplateType_
      }

-- | The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
--
-- /Note:/ Consider using 'templateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utavTemplateName :: Lens.Lens' UpdateTemplateActiveVersion Lude.Text
utavTemplateName = Lens.lens (templateName :: UpdateTemplateActiveVersion -> Lude.Text) (\s a -> s {templateName = a} :: UpdateTemplateActiveVersion)
{-# DEPRECATED utavTemplateName "Use generic-lens or generic-optics with 'templateName' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'templateActiveVersionRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utavTemplateActiveVersionRequest :: Lens.Lens' UpdateTemplateActiveVersion TemplateActiveVersionRequest
utavTemplateActiveVersionRequest = Lens.lens (templateActiveVersionRequest :: UpdateTemplateActiveVersion -> TemplateActiveVersionRequest) (\s a -> s {templateActiveVersionRequest = a} :: UpdateTemplateActiveVersion)
{-# DEPRECATED utavTemplateActiveVersionRequest "Use generic-lens or generic-optics with 'templateActiveVersionRequest' instead." #-}

-- | The type of channel that the message template is designed for. Valid values are: EMAIL, PUSH, SMS, and VOICE.
--
-- /Note:/ Consider using 'templateType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utavTemplateType :: Lens.Lens' UpdateTemplateActiveVersion Lude.Text
utavTemplateType = Lens.lens (templateType :: UpdateTemplateActiveVersion -> Lude.Text) (\s a -> s {templateType = a} :: UpdateTemplateActiveVersion)
{-# DEPRECATED utavTemplateType "Use generic-lens or generic-optics with 'templateType' instead." #-}

instance Lude.AWSRequest UpdateTemplateActiveVersion where
  type
    Rs UpdateTemplateActiveVersion =
      UpdateTemplateActiveVersionResponse
  request = Req.putJSON pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          UpdateTemplateActiveVersionResponse'
            Lude.<$> (Lude.eitherParseJSON x) Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders UpdateTemplateActiveVersion where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON UpdateTemplateActiveVersion where
  toJSON UpdateTemplateActiveVersion' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just
              ( "TemplateActiveVersionRequest"
                  Lude..= templateActiveVersionRequest
              )
          ]
      )

instance Lude.ToPath UpdateTemplateActiveVersion where
  toPath UpdateTemplateActiveVersion' {..} =
    Lude.mconcat
      [ "/v1/templates/",
        Lude.toBS templateName,
        "/",
        Lude.toBS templateType,
        "/active-version"
      ]

instance Lude.ToQuery UpdateTemplateActiveVersion where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkUpdateTemplateActiveVersionResponse' smart constructor.
data UpdateTemplateActiveVersionResponse = UpdateTemplateActiveVersionResponse'
  { messageBody :: MessageBody,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateTemplateActiveVersionResponse' with the minimum fields required to make a request.
--
-- * 'messageBody' -
-- * 'responseStatus' - The response status code.
mkUpdateTemplateActiveVersionResponse ::
  -- | 'messageBody'
  MessageBody ->
  -- | 'responseStatus'
  Lude.Int ->
  UpdateTemplateActiveVersionResponse
mkUpdateTemplateActiveVersionResponse
  pMessageBody_
  pResponseStatus_ =
    UpdateTemplateActiveVersionResponse'
      { messageBody = pMessageBody_,
        responseStatus = pResponseStatus_
      }

-- | Undocumented field.
--
-- /Note:/ Consider using 'messageBody' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utavrsMessageBody :: Lens.Lens' UpdateTemplateActiveVersionResponse MessageBody
utavrsMessageBody = Lens.lens (messageBody :: UpdateTemplateActiveVersionResponse -> MessageBody) (\s a -> s {messageBody = a} :: UpdateTemplateActiveVersionResponse)
{-# DEPRECATED utavrsMessageBody "Use generic-lens or generic-optics with 'messageBody' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utavrsResponseStatus :: Lens.Lens' UpdateTemplateActiveVersionResponse Lude.Int
utavrsResponseStatus = Lens.lens (responseStatus :: UpdateTemplateActiveVersionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: UpdateTemplateActiveVersionResponse)
{-# DEPRECATED utavrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
