{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.DeleteSkillGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a skill group by skill group ARN.
module Network.AWS.AlexaBusiness.DeleteSkillGroup
  ( -- * Creating a request
    DeleteSkillGroup (..),
    mkDeleteSkillGroup,

    -- ** Request lenses
    dsgSkillGroupARN,

    -- * Destructuring the response
    DeleteSkillGroupResponse (..),
    mkDeleteSkillGroupResponse,

    -- ** Response lenses
    dsgrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDeleteSkillGroup' smart constructor.
newtype DeleteSkillGroup = DeleteSkillGroup'
  { -- | The ARN of the skill group to delete. Required.
    skillGroupARN :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteSkillGroup' with the minimum fields required to make a request.
--
-- * 'skillGroupARN' - The ARN of the skill group to delete. Required.
mkDeleteSkillGroup ::
  DeleteSkillGroup
mkDeleteSkillGroup =
  DeleteSkillGroup' {skillGroupARN = Lude.Nothing}

-- | The ARN of the skill group to delete. Required.
--
-- /Note:/ Consider using 'skillGroupARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsgSkillGroupARN :: Lens.Lens' DeleteSkillGroup (Lude.Maybe Lude.Text)
dsgSkillGroupARN = Lens.lens (skillGroupARN :: DeleteSkillGroup -> Lude.Maybe Lude.Text) (\s a -> s {skillGroupARN = a} :: DeleteSkillGroup)
{-# DEPRECATED dsgSkillGroupARN "Use generic-lens or generic-optics with 'skillGroupARN' instead." #-}

instance Lude.AWSRequest DeleteSkillGroup where
  type Rs DeleteSkillGroup = DeleteSkillGroupResponse
  request = Req.postJSON alexaBusinessService
  response =
    Res.receiveEmpty
      ( \s h x ->
          DeleteSkillGroupResponse' Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeleteSkillGroup where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AlexaForBusiness.DeleteSkillGroup" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeleteSkillGroup where
  toJSON DeleteSkillGroup' {..} =
    Lude.object
      (Lude.catMaybes [("SkillGroupArn" Lude..=) Lude.<$> skillGroupARN])

instance Lude.ToPath DeleteSkillGroup where
  toPath = Lude.const "/"

instance Lude.ToQuery DeleteSkillGroup where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteSkillGroupResponse' smart constructor.
newtype DeleteSkillGroupResponse = DeleteSkillGroupResponse'
  { -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteSkillGroupResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkDeleteSkillGroupResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeleteSkillGroupResponse
mkDeleteSkillGroupResponse pResponseStatus_ =
  DeleteSkillGroupResponse' {responseStatus = pResponseStatus_}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsgrsResponseStatus :: Lens.Lens' DeleteSkillGroupResponse Lude.Int
dsgrsResponseStatus = Lens.lens (responseStatus :: DeleteSkillGroupResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeleteSkillGroupResponse)
{-# DEPRECATED dsgrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
