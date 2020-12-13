{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.ListTestGridSessionActions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the actions taken in a 'TestGridSession' .
module Network.AWS.DeviceFarm.ListTestGridSessionActions
  ( -- * Creating a request
    ListTestGridSessionActions (..),
    mkListTestGridSessionActions,

    -- ** Request lenses
    ltgsasMaxResult,
    ltgsasSessionARN,
    ltgsasNextToken,

    -- * Destructuring the response
    ListTestGridSessionActionsResponse (..),
    mkListTestGridSessionActionsResponse,

    -- ** Response lenses
    ltgsarsActions,
    ltgsarsNextToken,
    ltgsarsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkListTestGridSessionActions' smart constructor.
data ListTestGridSessionActions = ListTestGridSessionActions'
  { -- | The maximum number of sessions to return per response.
    maxResult :: Lude.Maybe Lude.Natural,
    -- | The ARN of the session to retrieve.
    sessionARN :: Lude.Text,
    -- | Pagination token.
    nextToken :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListTestGridSessionActions' with the minimum fields required to make a request.
--
-- * 'maxResult' - The maximum number of sessions to return per response.
-- * 'sessionARN' - The ARN of the session to retrieve.
-- * 'nextToken' - Pagination token.
mkListTestGridSessionActions ::
  -- | 'sessionARN'
  Lude.Text ->
  ListTestGridSessionActions
mkListTestGridSessionActions pSessionARN_ =
  ListTestGridSessionActions'
    { maxResult = Lude.Nothing,
      sessionARN = pSessionARN_,
      nextToken = Lude.Nothing
    }

-- | The maximum number of sessions to return per response.
--
-- /Note:/ Consider using 'maxResult' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltgsasMaxResult :: Lens.Lens' ListTestGridSessionActions (Lude.Maybe Lude.Natural)
ltgsasMaxResult = Lens.lens (maxResult :: ListTestGridSessionActions -> Lude.Maybe Lude.Natural) (\s a -> s {maxResult = a} :: ListTestGridSessionActions)
{-# DEPRECATED ltgsasMaxResult "Use generic-lens or generic-optics with 'maxResult' instead." #-}

-- | The ARN of the session to retrieve.
--
-- /Note:/ Consider using 'sessionARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltgsasSessionARN :: Lens.Lens' ListTestGridSessionActions Lude.Text
ltgsasSessionARN = Lens.lens (sessionARN :: ListTestGridSessionActions -> Lude.Text) (\s a -> s {sessionARN = a} :: ListTestGridSessionActions)
{-# DEPRECATED ltgsasSessionARN "Use generic-lens or generic-optics with 'sessionARN' instead." #-}

-- | Pagination token.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltgsasNextToken :: Lens.Lens' ListTestGridSessionActions (Lude.Maybe Lude.Text)
ltgsasNextToken = Lens.lens (nextToken :: ListTestGridSessionActions -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListTestGridSessionActions)
{-# DEPRECATED ltgsasNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

instance Lude.AWSRequest ListTestGridSessionActions where
  type
    Rs ListTestGridSessionActions =
      ListTestGridSessionActionsResponse
  request = Req.postJSON deviceFarmService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListTestGridSessionActionsResponse'
            Lude.<$> (x Lude..?> "actions" Lude..!@ Lude.mempty)
            Lude.<*> (x Lude..?> "nextToken")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListTestGridSessionActions where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "DeviceFarm_20150623.ListTestGridSessionActions" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListTestGridSessionActions where
  toJSON ListTestGridSessionActions' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("maxResult" Lude..=) Lude.<$> maxResult,
            Lude.Just ("sessionArn" Lude..= sessionARN),
            ("nextToken" Lude..=) Lude.<$> nextToken
          ]
      )

instance Lude.ToPath ListTestGridSessionActions where
  toPath = Lude.const "/"

instance Lude.ToQuery ListTestGridSessionActions where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListTestGridSessionActionsResponse' smart constructor.
data ListTestGridSessionActionsResponse = ListTestGridSessionActionsResponse'
  { -- | The action taken by the session.
    actions :: Lude.Maybe [TestGridSessionAction],
    -- | Pagination token.
    nextToken :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListTestGridSessionActionsResponse' with the minimum fields required to make a request.
--
-- * 'actions' - The action taken by the session.
-- * 'nextToken' - Pagination token.
-- * 'responseStatus' - The response status code.
mkListTestGridSessionActionsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListTestGridSessionActionsResponse
mkListTestGridSessionActionsResponse pResponseStatus_ =
  ListTestGridSessionActionsResponse'
    { actions = Lude.Nothing,
      nextToken = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The action taken by the session.
--
-- /Note:/ Consider using 'actions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltgsarsActions :: Lens.Lens' ListTestGridSessionActionsResponse (Lude.Maybe [TestGridSessionAction])
ltgsarsActions = Lens.lens (actions :: ListTestGridSessionActionsResponse -> Lude.Maybe [TestGridSessionAction]) (\s a -> s {actions = a} :: ListTestGridSessionActionsResponse)
{-# DEPRECATED ltgsarsActions "Use generic-lens or generic-optics with 'actions' instead." #-}

-- | Pagination token.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltgsarsNextToken :: Lens.Lens' ListTestGridSessionActionsResponse (Lude.Maybe Lude.Text)
ltgsarsNextToken = Lens.lens (nextToken :: ListTestGridSessionActionsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListTestGridSessionActionsResponse)
{-# DEPRECATED ltgsarsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltgsarsResponseStatus :: Lens.Lens' ListTestGridSessionActionsResponse Lude.Int
ltgsarsResponseStatus = Lens.lens (responseStatus :: ListTestGridSessionActionsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListTestGridSessionActionsResponse)
{-# DEPRECATED ltgsarsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
