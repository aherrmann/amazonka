{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.CreatePackage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a package for use with Amazon ES domains.
module Network.AWS.ElasticSearch.CreatePackage
  ( -- * Creating a request
    CreatePackage (..),
    mkCreatePackage,

    -- ** Request lenses
    cpPackageSource,
    cpPackageType,
    cpPackageName,
    cpPackageDescription,

    -- * Destructuring the response
    CreatePackageResponse (..),
    mkCreatePackageResponse,

    -- ** Response lenses
    cprsPackageDetails,
    cprsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Container for request parameters to @'CreatePackage' @ operation.
--
-- /See:/ 'mkCreatePackage' smart constructor.
data CreatePackage = CreatePackage'
  { -- | The customer S3 location @PackageSource@ for importing the package.
    packageSource :: PackageSource,
    -- | Type of package. Currently supports only TXT-DICTIONARY.
    packageType :: PackageType,
    -- | Unique identifier for the package.
    packageName :: Lude.Text,
    -- | Description of the package.
    packageDescription :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreatePackage' with the minimum fields required to make a request.
--
-- * 'packageSource' - The customer S3 location @PackageSource@ for importing the package.
-- * 'packageType' - Type of package. Currently supports only TXT-DICTIONARY.
-- * 'packageName' - Unique identifier for the package.
-- * 'packageDescription' - Description of the package.
mkCreatePackage ::
  -- | 'packageSource'
  PackageSource ->
  -- | 'packageType'
  PackageType ->
  -- | 'packageName'
  Lude.Text ->
  CreatePackage
mkCreatePackage pPackageSource_ pPackageType_ pPackageName_ =
  CreatePackage'
    { packageSource = pPackageSource_,
      packageType = pPackageType_,
      packageName = pPackageName_,
      packageDescription = Lude.Nothing
    }

-- | The customer S3 location @PackageSource@ for importing the package.
--
-- /Note:/ Consider using 'packageSource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpPackageSource :: Lens.Lens' CreatePackage PackageSource
cpPackageSource = Lens.lens (packageSource :: CreatePackage -> PackageSource) (\s a -> s {packageSource = a} :: CreatePackage)
{-# DEPRECATED cpPackageSource "Use generic-lens or generic-optics with 'packageSource' instead." #-}

-- | Type of package. Currently supports only TXT-DICTIONARY.
--
-- /Note:/ Consider using 'packageType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpPackageType :: Lens.Lens' CreatePackage PackageType
cpPackageType = Lens.lens (packageType :: CreatePackage -> PackageType) (\s a -> s {packageType = a} :: CreatePackage)
{-# DEPRECATED cpPackageType "Use generic-lens or generic-optics with 'packageType' instead." #-}

-- | Unique identifier for the package.
--
-- /Note:/ Consider using 'packageName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpPackageName :: Lens.Lens' CreatePackage Lude.Text
cpPackageName = Lens.lens (packageName :: CreatePackage -> Lude.Text) (\s a -> s {packageName = a} :: CreatePackage)
{-# DEPRECATED cpPackageName "Use generic-lens or generic-optics with 'packageName' instead." #-}

-- | Description of the package.
--
-- /Note:/ Consider using 'packageDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpPackageDescription :: Lens.Lens' CreatePackage (Lude.Maybe Lude.Text)
cpPackageDescription = Lens.lens (packageDescription :: CreatePackage -> Lude.Maybe Lude.Text) (\s a -> s {packageDescription = a} :: CreatePackage)
{-# DEPRECATED cpPackageDescription "Use generic-lens or generic-optics with 'packageDescription' instead." #-}

instance Lude.AWSRequest CreatePackage where
  type Rs CreatePackage = CreatePackageResponse
  request = Req.postJSON elasticSearchService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreatePackageResponse'
            Lude.<$> (x Lude..?> "PackageDetails")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreatePackage where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToJSON CreatePackage where
  toJSON CreatePackage' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("PackageSource" Lude..= packageSource),
            Lude.Just ("PackageType" Lude..= packageType),
            Lude.Just ("PackageName" Lude..= packageName),
            ("PackageDescription" Lude..=) Lude.<$> packageDescription
          ]
      )

instance Lude.ToPath CreatePackage where
  toPath = Lude.const "/2015-01-01/packages"

instance Lude.ToQuery CreatePackage where
  toQuery = Lude.const Lude.mempty

-- | Container for response returned by @'CreatePackage' @ operation.
--
-- /See:/ 'mkCreatePackageResponse' smart constructor.
data CreatePackageResponse = CreatePackageResponse'
  { -- | Information about the package @PackageDetails@ .
    packageDetails :: Lude.Maybe PackageDetails,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreatePackageResponse' with the minimum fields required to make a request.
--
-- * 'packageDetails' - Information about the package @PackageDetails@ .
-- * 'responseStatus' - The response status code.
mkCreatePackageResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreatePackageResponse
mkCreatePackageResponse pResponseStatus_ =
  CreatePackageResponse'
    { packageDetails = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Information about the package @PackageDetails@ .
--
-- /Note:/ Consider using 'packageDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cprsPackageDetails :: Lens.Lens' CreatePackageResponse (Lude.Maybe PackageDetails)
cprsPackageDetails = Lens.lens (packageDetails :: CreatePackageResponse -> Lude.Maybe PackageDetails) (\s a -> s {packageDetails = a} :: CreatePackageResponse)
{-# DEPRECATED cprsPackageDetails "Use generic-lens or generic-optics with 'packageDetails' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cprsResponseStatus :: Lens.Lens' CreatePackageResponse Lude.Int
cprsResponseStatus = Lens.lens (responseStatus :: CreatePackageResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreatePackageResponse)
{-# DEPRECATED cprsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
