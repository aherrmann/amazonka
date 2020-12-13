{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.SendTaskSuccess
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by activity workers and task states using the <https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token callback> pattern to report that the task identified by the @taskToken@ completed successfully.
module Network.AWS.StepFunctions.SendTaskSuccess
  ( -- * Creating a request
    SendTaskSuccess (..),
    mkSendTaskSuccess,

    -- ** Request lenses
    stsOutput,
    stsTaskToken,

    -- * Destructuring the response
    SendTaskSuccessResponse (..),
    mkSendTaskSuccessResponse,

    -- ** Response lenses
    stsrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.StepFunctions.Types

-- | /See:/ 'mkSendTaskSuccess' smart constructor.
data SendTaskSuccess = SendTaskSuccess'
  { -- | The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
    output :: Lude.Sensitive Lude.Text,
    -- | The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the <https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html context object> when a workflow enters a task state. See 'GetActivityTaskOutput$taskToken' .
    taskToken :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SendTaskSuccess' with the minimum fields required to make a request.
--
-- * 'output' - The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
-- * 'taskToken' - The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the <https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html context object> when a workflow enters a task state. See 'GetActivityTaskOutput$taskToken' .
mkSendTaskSuccess ::
  -- | 'output'
  Lude.Sensitive Lude.Text ->
  -- | 'taskToken'
  Lude.Text ->
  SendTaskSuccess
mkSendTaskSuccess pOutput_ pTaskToken_ =
  SendTaskSuccess' {output = pOutput_, taskToken = pTaskToken_}

-- | The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- /Note:/ Consider using 'output' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stsOutput :: Lens.Lens' SendTaskSuccess (Lude.Sensitive Lude.Text)
stsOutput = Lens.lens (output :: SendTaskSuccess -> Lude.Sensitive Lude.Text) (\s a -> s {output = a} :: SendTaskSuccess)
{-# DEPRECATED stsOutput "Use generic-lens or generic-optics with 'output' instead." #-}

-- | The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the <https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html context object> when a workflow enters a task state. See 'GetActivityTaskOutput$taskToken' .
--
-- /Note:/ Consider using 'taskToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stsTaskToken :: Lens.Lens' SendTaskSuccess Lude.Text
stsTaskToken = Lens.lens (taskToken :: SendTaskSuccess -> Lude.Text) (\s a -> s {taskToken = a} :: SendTaskSuccess)
{-# DEPRECATED stsTaskToken "Use generic-lens or generic-optics with 'taskToken' instead." #-}

instance Lude.AWSRequest SendTaskSuccess where
  type Rs SendTaskSuccess = SendTaskSuccessResponse
  request = Req.postJSON stepFunctionsService
  response =
    Res.receiveEmpty
      ( \s h x ->
          SendTaskSuccessResponse' Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders SendTaskSuccess where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AWSStepFunctions.SendTaskSuccess" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.0" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON SendTaskSuccess where
  toJSON SendTaskSuccess' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("output" Lude..= output),
            Lude.Just ("taskToken" Lude..= taskToken)
          ]
      )

instance Lude.ToPath SendTaskSuccess where
  toPath = Lude.const "/"

instance Lude.ToQuery SendTaskSuccess where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkSendTaskSuccessResponse' smart constructor.
newtype SendTaskSuccessResponse = SendTaskSuccessResponse'
  { -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SendTaskSuccessResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkSendTaskSuccessResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  SendTaskSuccessResponse
mkSendTaskSuccessResponse pResponseStatus_ =
  SendTaskSuccessResponse' {responseStatus = pResponseStatus_}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
stsrsResponseStatus :: Lens.Lens' SendTaskSuccessResponse Lude.Int
stsrsResponseStatus = Lens.lens (responseStatus :: SendTaskSuccessResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: SendTaskSuccessResponse)
{-# DEPRECATED stsrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
