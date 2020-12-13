{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.ListProvisioningArtifacts
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all provisioning artifacts (also known as versions) for the specified product.
module Network.AWS.ServiceCatalog.ListProvisioningArtifacts
  ( -- * Creating a request
    ListProvisioningArtifacts (..),
    mkListProvisioningArtifacts,

    -- ** Request lenses
    lAcceptLanguage,
    lProductId,

    -- * Destructuring the response
    ListProvisioningArtifactsResponse (..),
    mkListProvisioningArtifactsResponse,

    -- ** Response lenses
    lpasrsNextPageToken,
    lpasrsProvisioningArtifactDetails,
    lpasrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'mkListProvisioningArtifacts' smart constructor.
data ListProvisioningArtifacts = ListProvisioningArtifacts'
  { -- | The language code.
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
    -- | The product identifier.
    productId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListProvisioningArtifacts' with the minimum fields required to make a request.
--
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
-- * 'productId' - The product identifier.
mkListProvisioningArtifacts ::
  -- | 'productId'
  Lude.Text ->
  ListProvisioningArtifacts
mkListProvisioningArtifacts pProductId_ =
  ListProvisioningArtifacts'
    { acceptLanguage = Lude.Nothing,
      productId = pProductId_
    }

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
lAcceptLanguage :: Lens.Lens' ListProvisioningArtifacts (Lude.Maybe Lude.Text)
lAcceptLanguage = Lens.lens (acceptLanguage :: ListProvisioningArtifacts -> Lude.Maybe Lude.Text) (\s a -> s {acceptLanguage = a} :: ListProvisioningArtifacts)
{-# DEPRECATED lAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

-- | The product identifier.
--
-- /Note:/ Consider using 'productId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lProductId :: Lens.Lens' ListProvisioningArtifacts Lude.Text
lProductId = Lens.lens (productId :: ListProvisioningArtifacts -> Lude.Text) (\s a -> s {productId = a} :: ListProvisioningArtifacts)
{-# DEPRECATED lProductId "Use generic-lens or generic-optics with 'productId' instead." #-}

instance Lude.AWSRequest ListProvisioningArtifacts where
  type
    Rs ListProvisioningArtifacts =
      ListProvisioningArtifactsResponse
  request = Req.postJSON serviceCatalogService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListProvisioningArtifactsResponse'
            Lude.<$> (x Lude..?> "NextPageToken")
            Lude.<*> (x Lude..?> "ProvisioningArtifactDetails" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListProvisioningArtifacts where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AWS242ServiceCatalogService.ListProvisioningArtifacts" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListProvisioningArtifacts where
  toJSON ListProvisioningArtifacts' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("AcceptLanguage" Lude..=) Lude.<$> acceptLanguage,
            Lude.Just ("ProductId" Lude..= productId)
          ]
      )

instance Lude.ToPath ListProvisioningArtifacts where
  toPath = Lude.const "/"

instance Lude.ToQuery ListProvisioningArtifacts where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListProvisioningArtifactsResponse' smart constructor.
data ListProvisioningArtifactsResponse = ListProvisioningArtifactsResponse'
  { -- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
    nextPageToken :: Lude.Maybe Lude.Text,
    -- | Information about the provisioning artifacts.
    provisioningArtifactDetails :: Lude.Maybe [ProvisioningArtifactDetail],
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListProvisioningArtifactsResponse' with the minimum fields required to make a request.
--
-- * 'nextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
-- * 'provisioningArtifactDetails' - Information about the provisioning artifacts.
-- * 'responseStatus' - The response status code.
mkListProvisioningArtifactsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListProvisioningArtifactsResponse
mkListProvisioningArtifactsResponse pResponseStatus_ =
  ListProvisioningArtifactsResponse'
    { nextPageToken = Lude.Nothing,
      provisioningArtifactDetails = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpasrsNextPageToken :: Lens.Lens' ListProvisioningArtifactsResponse (Lude.Maybe Lude.Text)
lpasrsNextPageToken = Lens.lens (nextPageToken :: ListProvisioningArtifactsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextPageToken = a} :: ListProvisioningArtifactsResponse)
{-# DEPRECATED lpasrsNextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead." #-}

-- | Information about the provisioning artifacts.
--
-- /Note:/ Consider using 'provisioningArtifactDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpasrsProvisioningArtifactDetails :: Lens.Lens' ListProvisioningArtifactsResponse (Lude.Maybe [ProvisioningArtifactDetail])
lpasrsProvisioningArtifactDetails = Lens.lens (provisioningArtifactDetails :: ListProvisioningArtifactsResponse -> Lude.Maybe [ProvisioningArtifactDetail]) (\s a -> s {provisioningArtifactDetails = a} :: ListProvisioningArtifactsResponse)
{-# DEPRECATED lpasrsProvisioningArtifactDetails "Use generic-lens or generic-optics with 'provisioningArtifactDetails' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpasrsResponseStatus :: Lens.Lens' ListProvisioningArtifactsResponse Lude.Int
lpasrsResponseStatus = Lens.lens (responseStatus :: ListProvisioningArtifactsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListProvisioningArtifactsResponse)
{-# DEPRECATED lpasrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
