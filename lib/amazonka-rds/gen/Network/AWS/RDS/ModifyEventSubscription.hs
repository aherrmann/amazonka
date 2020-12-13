{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.ModifyEventSubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing RDS event notification subscription. You can't modify the source identifiers using this call. To change source identifiers for a subscription, use the @AddSourceIdentifierToSubscription@ and @RemoveSourceIdentifierFromSubscription@ calls.
--
-- You can see a list of the event categories for a given source type (@SourceType@ ) in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide/ or by using the @DescribeEventCategories@ operation.
module Network.AWS.RDS.ModifyEventSubscription
  ( -- * Creating a request
    ModifyEventSubscription (..),
    mkModifyEventSubscription,

    -- ** Request lenses
    mesSubscriptionName,
    mesSNSTopicARN,
    mesEnabled,
    mesSourceType,
    mesEventCategories,

    -- * Destructuring the response
    ModifyEventSubscriptionResponse (..),
    mkModifyEventSubscriptionResponse,

    -- ** Response lenses
    mesrsEventSubscription,
    mesrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- |
--
-- /See:/ 'mkModifyEventSubscription' smart constructor.
data ModifyEventSubscription = ModifyEventSubscription'
  { -- | The name of the RDS event notification subscription.
    subscriptionName :: Lude.Text,
    -- | The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
    snsTopicARN :: Lude.Maybe Lude.Text,
    -- | A value that indicates whether to activate the subscription.
    enabled :: Lude.Maybe Lude.Bool,
    -- | The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. If this value isn't specified, all events are returned.
    --
    -- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ | @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
    sourceType :: Lude.Maybe Lude.Text,
    -- | A list of event categories for a source type (@SourceType@ ) that you want to subscribe to. You can see a list of the categories for a given source type in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide/ or by using the @DescribeEventCategories@ operation.
    eventCategories :: Lude.Maybe [Lude.Text]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ModifyEventSubscription' with the minimum fields required to make a request.
--
-- * 'subscriptionName' - The name of the RDS event notification subscription.
-- * 'snsTopicARN' - The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
-- * 'enabled' - A value that indicates whether to activate the subscription.
-- * 'sourceType' - The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. If this value isn't specified, all events are returned.
--
-- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ | @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
-- * 'eventCategories' - A list of event categories for a source type (@SourceType@ ) that you want to subscribe to. You can see a list of the categories for a given source type in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide/ or by using the @DescribeEventCategories@ operation.
mkModifyEventSubscription ::
  -- | 'subscriptionName'
  Lude.Text ->
  ModifyEventSubscription
mkModifyEventSubscription pSubscriptionName_ =
  ModifyEventSubscription'
    { subscriptionName = pSubscriptionName_,
      snsTopicARN = Lude.Nothing,
      enabled = Lude.Nothing,
      sourceType = Lude.Nothing,
      eventCategories = Lude.Nothing
    }

-- | The name of the RDS event notification subscription.
--
-- /Note:/ Consider using 'subscriptionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSubscriptionName :: Lens.Lens' ModifyEventSubscription Lude.Text
mesSubscriptionName = Lens.lens (subscriptionName :: ModifyEventSubscription -> Lude.Text) (\s a -> s {subscriptionName = a} :: ModifyEventSubscription)
{-# DEPRECATED mesSubscriptionName "Use generic-lens or generic-optics with 'subscriptionName' instead." #-}

-- | The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
--
-- /Note:/ Consider using 'snsTopicARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSNSTopicARN :: Lens.Lens' ModifyEventSubscription (Lude.Maybe Lude.Text)
mesSNSTopicARN = Lens.lens (snsTopicARN :: ModifyEventSubscription -> Lude.Maybe Lude.Text) (\s a -> s {snsTopicARN = a} :: ModifyEventSubscription)
{-# DEPRECATED mesSNSTopicARN "Use generic-lens or generic-optics with 'snsTopicARN' instead." #-}

-- | A value that indicates whether to activate the subscription.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesEnabled :: Lens.Lens' ModifyEventSubscription (Lude.Maybe Lude.Bool)
mesEnabled = Lens.lens (enabled :: ModifyEventSubscription -> Lude.Maybe Lude.Bool) (\s a -> s {enabled = a} :: ModifyEventSubscription)
{-# DEPRECATED mesEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. If this value isn't specified, all events are returned.
--
-- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ | @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@
--
-- /Note:/ Consider using 'sourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSourceType :: Lens.Lens' ModifyEventSubscription (Lude.Maybe Lude.Text)
mesSourceType = Lens.lens (sourceType :: ModifyEventSubscription -> Lude.Maybe Lude.Text) (\s a -> s {sourceType = a} :: ModifyEventSubscription)
{-# DEPRECATED mesSourceType "Use generic-lens or generic-optics with 'sourceType' instead." #-}

-- | A list of event categories for a source type (@SourceType@ ) that you want to subscribe to. You can see a list of the categories for a given source type in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide/ or by using the @DescribeEventCategories@ operation.
--
-- /Note:/ Consider using 'eventCategories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesEventCategories :: Lens.Lens' ModifyEventSubscription (Lude.Maybe [Lude.Text])
mesEventCategories = Lens.lens (eventCategories :: ModifyEventSubscription -> Lude.Maybe [Lude.Text]) (\s a -> s {eventCategories = a} :: ModifyEventSubscription)
{-# DEPRECATED mesEventCategories "Use generic-lens or generic-optics with 'eventCategories' instead." #-}

instance Lude.AWSRequest ModifyEventSubscription where
  type Rs ModifyEventSubscription = ModifyEventSubscriptionResponse
  request = Req.postQuery rdsService
  response =
    Res.receiveXMLWrapper
      "ModifyEventSubscriptionResult"
      ( \s h x ->
          ModifyEventSubscriptionResponse'
            Lude.<$> (x Lude..@? "EventSubscription")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ModifyEventSubscription where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath ModifyEventSubscription where
  toPath = Lude.const "/"

instance Lude.ToQuery ModifyEventSubscription where
  toQuery ModifyEventSubscription' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("ModifyEventSubscription" :: Lude.ByteString),
        "Version" Lude.=: ("2014-10-31" :: Lude.ByteString),
        "SubscriptionName" Lude.=: subscriptionName,
        "SnsTopicArn" Lude.=: snsTopicARN,
        "Enabled" Lude.=: enabled,
        "SourceType" Lude.=: sourceType,
        "EventCategories"
          Lude.=: Lude.toQuery
            (Lude.toQueryList "EventCategory" Lude.<$> eventCategories)
      ]

-- | /See:/ 'mkModifyEventSubscriptionResponse' smart constructor.
data ModifyEventSubscriptionResponse = ModifyEventSubscriptionResponse'
  { eventSubscription :: Lude.Maybe EventSubscription,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ModifyEventSubscriptionResponse' with the minimum fields required to make a request.
--
-- * 'eventSubscription' -
-- * 'responseStatus' - The response status code.
mkModifyEventSubscriptionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ModifyEventSubscriptionResponse
mkModifyEventSubscriptionResponse pResponseStatus_ =
  ModifyEventSubscriptionResponse'
    { eventSubscription =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'eventSubscription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesrsEventSubscription :: Lens.Lens' ModifyEventSubscriptionResponse (Lude.Maybe EventSubscription)
mesrsEventSubscription = Lens.lens (eventSubscription :: ModifyEventSubscriptionResponse -> Lude.Maybe EventSubscription) (\s a -> s {eventSubscription = a} :: ModifyEventSubscriptionResponse)
{-# DEPRECATED mesrsEventSubscription "Use generic-lens or generic-optics with 'eventSubscription' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesrsResponseStatus :: Lens.Lens' ModifyEventSubscriptionResponse Lude.Int
mesrsResponseStatus = Lens.lens (responseStatus :: ModifyEventSubscriptionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ModifyEventSubscriptionResponse)
{-# DEPRECATED mesrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
