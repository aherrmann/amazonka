{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.CreateProvisionedProductPlan
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed.
--
-- You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED.
-- To view the resource changes in the change set, use 'DescribeProvisionedProductPlan' . To create or modify the provisioned product, use 'ExecuteProvisionedProductPlan' .
module Network.AWS.ServiceCatalog.CreateProvisionedProductPlan
  ( -- * Creating a request
    CreateProvisionedProductPlan (..),
    mkCreateProvisionedProductPlan,

    -- ** Request lenses
    cpppIdempotencyToken,
    cpppProvisionedProductName,
    cpppProvisioningArtifactId,
    cpppNotificationARNs,
    cpppPlanName,
    cpppAcceptLanguage,
    cpppPathId,
    cpppProvisioningParameters,
    cpppPlanType,
    cpppProductId,
    cpppTags,

    -- * Destructuring the response
    CreateProvisionedProductPlanResponse (..),
    mkCreateProvisionedProductPlanResponse,

    -- ** Response lenses
    cppprsProvisionedProductName,
    cppprsProvisionProductId,
    cppprsProvisioningArtifactId,
    cppprsPlanId,
    cppprsPlanName,
    cppprsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'mkCreateProvisionedProductPlan' smart constructor.
data CreateProvisionedProductPlan = CreateProvisionedProductPlan'
  { -- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
    idempotencyToken :: Lude.Text,
    -- | A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.
    provisionedProductName :: Lude.Text,
    -- | The identifier of the provisioning artifact.
    provisioningArtifactId :: Lude.Text,
    -- | Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
    notificationARNs :: Lude.Maybe [Lude.Text],
    -- | The name of the plan.
    planName :: Lude.Text,
    -- | The language code.
    --
    --
    --     * @en@ - English (default)
    --
    --
    --     * @jp@ - Japanese
    --
    --
    --     * @zh@ - Chinese
    acceptLanguage :: Lude.Maybe Lude.Text,
    -- | The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' .
    pathId :: Lude.Maybe Lude.Text,
    -- | Parameters specified by the administrator that are required for provisioning the product.
    provisioningParameters :: Lude.Maybe [UpdateProvisioningParameter],
    -- | The plan type.
    planType :: ProvisionedProductPlanType,
    -- | The product identifier.
    productId :: Lude.Text,
    -- | One or more tags.
    --
    -- If the plan is for an existing provisioned product, the product must have a @RESOURCE_UPDATE@ constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to allow tag updates.
    tags :: Lude.Maybe [Tag]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateProvisionedProductPlan' with the minimum fields required to make a request.
--
-- * 'idempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
-- * 'provisionedProductName' - A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.
-- * 'provisioningArtifactId' - The identifier of the provisioning artifact.
-- * 'notificationARNs' - Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
-- * 'planName' - The name of the plan.
-- * 'acceptLanguage' - The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
-- * 'pathId' - The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' .
-- * 'provisioningParameters' - Parameters specified by the administrator that are required for provisioning the product.
-- * 'planType' - The plan type.
-- * 'productId' - The product identifier.
-- * 'tags' - One or more tags.
--
-- If the plan is for an existing provisioned product, the product must have a @RESOURCE_UPDATE@ constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to allow tag updates.
mkCreateProvisionedProductPlan ::
  -- | 'idempotencyToken'
  Lude.Text ->
  -- | 'provisionedProductName'
  Lude.Text ->
  -- | 'provisioningArtifactId'
  Lude.Text ->
  -- | 'planName'
  Lude.Text ->
  -- | 'planType'
  ProvisionedProductPlanType ->
  -- | 'productId'
  Lude.Text ->
  CreateProvisionedProductPlan
mkCreateProvisionedProductPlan
  pIdempotencyToken_
  pProvisionedProductName_
  pProvisioningArtifactId_
  pPlanName_
  pPlanType_
  pProductId_ =
    CreateProvisionedProductPlan'
      { idempotencyToken =
          pIdempotencyToken_,
        provisionedProductName = pProvisionedProductName_,
        provisioningArtifactId = pProvisioningArtifactId_,
        notificationARNs = Lude.Nothing,
        planName = pPlanName_,
        acceptLanguage = Lude.Nothing,
        pathId = Lude.Nothing,
        provisioningParameters = Lude.Nothing,
        planType = pPlanType_,
        productId = pProductId_,
        tags = Lude.Nothing
      }

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
--
-- /Note:/ Consider using 'idempotencyToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppIdempotencyToken :: Lens.Lens' CreateProvisionedProductPlan Lude.Text
cpppIdempotencyToken = Lens.lens (idempotencyToken :: CreateProvisionedProductPlan -> Lude.Text) (\s a -> s {idempotencyToken = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppIdempotencyToken "Use generic-lens or generic-optics with 'idempotencyToken' instead." #-}

-- | A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.
--
-- /Note:/ Consider using 'provisionedProductName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppProvisionedProductName :: Lens.Lens' CreateProvisionedProductPlan Lude.Text
cpppProvisionedProductName = Lens.lens (provisionedProductName :: CreateProvisionedProductPlan -> Lude.Text) (\s a -> s {provisionedProductName = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppProvisionedProductName "Use generic-lens or generic-optics with 'provisionedProductName' instead." #-}

-- | The identifier of the provisioning artifact.
--
-- /Note:/ Consider using 'provisioningArtifactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppProvisioningArtifactId :: Lens.Lens' CreateProvisionedProductPlan Lude.Text
cpppProvisioningArtifactId = Lens.lens (provisioningArtifactId :: CreateProvisionedProductPlan -> Lude.Text) (\s a -> s {provisioningArtifactId = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppProvisioningArtifactId "Use generic-lens or generic-optics with 'provisioningArtifactId' instead." #-}

-- | Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
--
-- /Note:/ Consider using 'notificationARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppNotificationARNs :: Lens.Lens' CreateProvisionedProductPlan (Lude.Maybe [Lude.Text])
cpppNotificationARNs = Lens.lens (notificationARNs :: CreateProvisionedProductPlan -> Lude.Maybe [Lude.Text]) (\s a -> s {notificationARNs = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppNotificationARNs "Use generic-lens or generic-optics with 'notificationARNs' instead." #-}

-- | The name of the plan.
--
-- /Note:/ Consider using 'planName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppPlanName :: Lens.Lens' CreateProvisionedProductPlan Lude.Text
cpppPlanName = Lens.lens (planName :: CreateProvisionedProductPlan -> Lude.Text) (\s a -> s {planName = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppPlanName "Use generic-lens or generic-optics with 'planName' instead." #-}

-- | The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
--
-- /Note:/ Consider using 'acceptLanguage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppAcceptLanguage :: Lens.Lens' CreateProvisionedProductPlan (Lude.Maybe Lude.Text)
cpppAcceptLanguage = Lens.lens (acceptLanguage :: CreateProvisionedProductPlan -> Lude.Maybe Lude.Text) (\s a -> s {acceptLanguage = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

-- | The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use 'ListLaunchPaths' .
--
-- /Note:/ Consider using 'pathId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppPathId :: Lens.Lens' CreateProvisionedProductPlan (Lude.Maybe Lude.Text)
cpppPathId = Lens.lens (pathId :: CreateProvisionedProductPlan -> Lude.Maybe Lude.Text) (\s a -> s {pathId = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppPathId "Use generic-lens or generic-optics with 'pathId' instead." #-}

-- | Parameters specified by the administrator that are required for provisioning the product.
--
-- /Note:/ Consider using 'provisioningParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppProvisioningParameters :: Lens.Lens' CreateProvisionedProductPlan (Lude.Maybe [UpdateProvisioningParameter])
cpppProvisioningParameters = Lens.lens (provisioningParameters :: CreateProvisionedProductPlan -> Lude.Maybe [UpdateProvisioningParameter]) (\s a -> s {provisioningParameters = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppProvisioningParameters "Use generic-lens or generic-optics with 'provisioningParameters' instead." #-}

-- | The plan type.
--
-- /Note:/ Consider using 'planType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppPlanType :: Lens.Lens' CreateProvisionedProductPlan ProvisionedProductPlanType
cpppPlanType = Lens.lens (planType :: CreateProvisionedProductPlan -> ProvisionedProductPlanType) (\s a -> s {planType = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppPlanType "Use generic-lens or generic-optics with 'planType' instead." #-}

-- | The product identifier.
--
-- /Note:/ Consider using 'productId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppProductId :: Lens.Lens' CreateProvisionedProductPlan Lude.Text
cpppProductId = Lens.lens (productId :: CreateProvisionedProductPlan -> Lude.Text) (\s a -> s {productId = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppProductId "Use generic-lens or generic-optics with 'productId' instead." #-}

-- | One or more tags.
--
-- If the plan is for an existing provisioned product, the product must have a @RESOURCE_UPDATE@ constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to allow tag updates.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpppTags :: Lens.Lens' CreateProvisionedProductPlan (Lude.Maybe [Tag])
cpppTags = Lens.lens (tags :: CreateProvisionedProductPlan -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateProvisionedProductPlan)
{-# DEPRECATED cpppTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Lude.AWSRequest CreateProvisionedProductPlan where
  type
    Rs CreateProvisionedProductPlan =
      CreateProvisionedProductPlanResponse
  request = Req.postJSON serviceCatalogService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateProvisionedProductPlanResponse'
            Lude.<$> (x Lude..?> "ProvisionedProductName")
            Lude.<*> (x Lude..?> "ProvisionProductId")
            Lude.<*> (x Lude..?> "ProvisioningArtifactId")
            Lude.<*> (x Lude..?> "PlanId")
            Lude.<*> (x Lude..?> "PlanName")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateProvisionedProductPlan where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AWS242ServiceCatalogService.CreateProvisionedProductPlan" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateProvisionedProductPlan where
  toJSON CreateProvisionedProductPlan' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("IdempotencyToken" Lude..= idempotencyToken),
            Lude.Just
              ("ProvisionedProductName" Lude..= provisionedProductName),
            Lude.Just
              ("ProvisioningArtifactId" Lude..= provisioningArtifactId),
            ("NotificationArns" Lude..=) Lude.<$> notificationARNs,
            Lude.Just ("PlanName" Lude..= planName),
            ("AcceptLanguage" Lude..=) Lude.<$> acceptLanguage,
            ("PathId" Lude..=) Lude.<$> pathId,
            ("ProvisioningParameters" Lude..=) Lude.<$> provisioningParameters,
            Lude.Just ("PlanType" Lude..= planType),
            Lude.Just ("ProductId" Lude..= productId),
            ("Tags" Lude..=) Lude.<$> tags
          ]
      )

instance Lude.ToPath CreateProvisionedProductPlan where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateProvisionedProductPlan where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkCreateProvisionedProductPlanResponse' smart constructor.
data CreateProvisionedProductPlanResponse = CreateProvisionedProductPlanResponse'
  { -- | The user-friendly name of the provisioned product.
    provisionedProductName :: Lude.Maybe Lude.Text,
    -- | The product identifier.
    provisionProductId :: Lude.Maybe Lude.Text,
    -- | The identifier of the provisioning artifact.
    provisioningArtifactId :: Lude.Maybe Lude.Text,
    -- | The plan identifier.
    planId :: Lude.Maybe Lude.Text,
    -- | The name of the plan.
    planName :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateProvisionedProductPlanResponse' with the minimum fields required to make a request.
--
-- * 'provisionedProductName' - The user-friendly name of the provisioned product.
-- * 'provisionProductId' - The product identifier.
-- * 'provisioningArtifactId' - The identifier of the provisioning artifact.
-- * 'planId' - The plan identifier.
-- * 'planName' - The name of the plan.
-- * 'responseStatus' - The response status code.
mkCreateProvisionedProductPlanResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateProvisionedProductPlanResponse
mkCreateProvisionedProductPlanResponse pResponseStatus_ =
  CreateProvisionedProductPlanResponse'
    { provisionedProductName =
        Lude.Nothing,
      provisionProductId = Lude.Nothing,
      provisioningArtifactId = Lude.Nothing,
      planId = Lude.Nothing,
      planName = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The user-friendly name of the provisioned product.
--
-- /Note:/ Consider using 'provisionedProductName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cppprsProvisionedProductName :: Lens.Lens' CreateProvisionedProductPlanResponse (Lude.Maybe Lude.Text)
cppprsProvisionedProductName = Lens.lens (provisionedProductName :: CreateProvisionedProductPlanResponse -> Lude.Maybe Lude.Text) (\s a -> s {provisionedProductName = a} :: CreateProvisionedProductPlanResponse)
{-# DEPRECATED cppprsProvisionedProductName "Use generic-lens or generic-optics with 'provisionedProductName' instead." #-}

-- | The product identifier.
--
-- /Note:/ Consider using 'provisionProductId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cppprsProvisionProductId :: Lens.Lens' CreateProvisionedProductPlanResponse (Lude.Maybe Lude.Text)
cppprsProvisionProductId = Lens.lens (provisionProductId :: CreateProvisionedProductPlanResponse -> Lude.Maybe Lude.Text) (\s a -> s {provisionProductId = a} :: CreateProvisionedProductPlanResponse)
{-# DEPRECATED cppprsProvisionProductId "Use generic-lens or generic-optics with 'provisionProductId' instead." #-}

-- | The identifier of the provisioning artifact.
--
-- /Note:/ Consider using 'provisioningArtifactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cppprsProvisioningArtifactId :: Lens.Lens' CreateProvisionedProductPlanResponse (Lude.Maybe Lude.Text)
cppprsProvisioningArtifactId = Lens.lens (provisioningArtifactId :: CreateProvisionedProductPlanResponse -> Lude.Maybe Lude.Text) (\s a -> s {provisioningArtifactId = a} :: CreateProvisionedProductPlanResponse)
{-# DEPRECATED cppprsProvisioningArtifactId "Use generic-lens or generic-optics with 'provisioningArtifactId' instead." #-}

-- | The plan identifier.
--
-- /Note:/ Consider using 'planId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cppprsPlanId :: Lens.Lens' CreateProvisionedProductPlanResponse (Lude.Maybe Lude.Text)
cppprsPlanId = Lens.lens (planId :: CreateProvisionedProductPlanResponse -> Lude.Maybe Lude.Text) (\s a -> s {planId = a} :: CreateProvisionedProductPlanResponse)
{-# DEPRECATED cppprsPlanId "Use generic-lens or generic-optics with 'planId' instead." #-}

-- | The name of the plan.
--
-- /Note:/ Consider using 'planName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cppprsPlanName :: Lens.Lens' CreateProvisionedProductPlanResponse (Lude.Maybe Lude.Text)
cppprsPlanName = Lens.lens (planName :: CreateProvisionedProductPlanResponse -> Lude.Maybe Lude.Text) (\s a -> s {planName = a} :: CreateProvisionedProductPlanResponse)
{-# DEPRECATED cppprsPlanName "Use generic-lens or generic-optics with 'planName' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cppprsResponseStatus :: Lens.Lens' CreateProvisionedProductPlanResponse Lude.Int
cppprsResponseStatus = Lens.lens (responseStatus :: CreateProvisionedProductPlanResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateProvisionedProductPlanResponse)
{-# DEPRECATED cppprsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
