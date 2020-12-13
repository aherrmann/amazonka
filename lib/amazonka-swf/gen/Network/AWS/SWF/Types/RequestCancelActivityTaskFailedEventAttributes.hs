{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
  ( RequestCancelActivityTaskFailedEventAttributes (..),

    -- * Smart constructor
    mkRequestCancelActivityTaskFailedEventAttributes,

    -- * Lenses
    rcatfeaActivityId,
    rcatfeaCause,
    rcatfeaDecisionTaskCompletedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause

-- | Provides the details of the @RequestCancelActivityTaskFailed@ event.
--
-- /See:/ 'mkRequestCancelActivityTaskFailedEventAttributes' smart constructor.
data RequestCancelActivityTaskFailedEventAttributes = RequestCancelActivityTaskFailedEventAttributes'
  { -- | The activityId provided in the @RequestCancelActivityTask@ decision that failed.
    activityId :: Lude.Text,
    -- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
    cause :: RequestCancelActivityTaskFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelActivityTask@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Lude.Integer
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RequestCancelActivityTaskFailedEventAttributes' with the minimum fields required to make a request.
--
-- * 'activityId' - The activityId provided in the @RequestCancelActivityTask@ decision that failed.
-- * 'cause' - The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
-- * 'decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelActivityTask@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
mkRequestCancelActivityTaskFailedEventAttributes ::
  -- | 'activityId'
  Lude.Text ->
  -- | 'cause'
  RequestCancelActivityTaskFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Lude.Integer ->
  RequestCancelActivityTaskFailedEventAttributes
mkRequestCancelActivityTaskFailedEventAttributes
  pActivityId_
  pCause_
  pDecisionTaskCompletedEventId_ =
    RequestCancelActivityTaskFailedEventAttributes'
      { activityId =
          pActivityId_,
        cause = pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The activityId provided in the @RequestCancelActivityTask@ decision that failed.
--
-- /Note:/ Consider using 'activityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcatfeaActivityId :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes Lude.Text
rcatfeaActivityId = Lens.lens (activityId :: RequestCancelActivityTaskFailedEventAttributes -> Lude.Text) (\s a -> s {activityId = a} :: RequestCancelActivityTaskFailedEventAttributes)
{-# DEPRECATED rcatfeaActivityId "Use generic-lens or generic-optics with 'activityId' instead." #-}

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcatfeaCause :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes RequestCancelActivityTaskFailedCause
rcatfeaCause = Lens.lens (cause :: RequestCancelActivityTaskFailedEventAttributes -> RequestCancelActivityTaskFailedCause) (\s a -> s {cause = a} :: RequestCancelActivityTaskFailedEventAttributes)
{-# DEPRECATED rcatfeaCause "Use generic-lens or generic-optics with 'cause' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelActivityTask@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcatfeaDecisionTaskCompletedEventId :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes Lude.Integer
rcatfeaDecisionTaskCompletedEventId = Lens.lens (decisionTaskCompletedEventId :: RequestCancelActivityTaskFailedEventAttributes -> Lude.Integer) (\s a -> s {decisionTaskCompletedEventId = a} :: RequestCancelActivityTaskFailedEventAttributes)
{-# DEPRECATED rcatfeaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

instance
  Lude.FromJSON
    RequestCancelActivityTaskFailedEventAttributes
  where
  parseJSON =
    Lude.withObject
      "RequestCancelActivityTaskFailedEventAttributes"
      ( \x ->
          RequestCancelActivityTaskFailedEventAttributes'
            Lude.<$> (x Lude..: "activityId")
            Lude.<*> (x Lude..: "cause")
            Lude.<*> (x Lude..: "decisionTaskCompletedEventId")
      )
