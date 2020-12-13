{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.GetBasePathMapping
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe a 'BasePathMapping' resource.
module Network.AWS.APIGateway.GetBasePathMapping
  ( -- * Creating a request
    GetBasePathMapping (..),
    mkGetBasePathMapping,

    -- ** Request lenses
    gBasePath,
    gDomainName,

    -- * Destructuring the response
    BasePathMapping (..),
    mkBasePathMapping,

    -- ** Response lenses
    bpmStage,
    bpmBasePath,
    bpmRestAPIId,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Request to describe a 'BasePathMapping' resource.
--
-- /See:/ 'mkGetBasePathMapping' smart constructor.
data GetBasePathMapping = GetBasePathMapping'
  { -- | [Required] The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.
    basePath :: Lude.Text,
    -- | [Required] The domain name of the 'BasePathMapping' resource to be described.
    domainName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetBasePathMapping' with the minimum fields required to make a request.
--
-- * 'basePath' - [Required] The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.
-- * 'domainName' - [Required] The domain name of the 'BasePathMapping' resource to be described.
mkGetBasePathMapping ::
  -- | 'basePath'
  Lude.Text ->
  -- | 'domainName'
  Lude.Text ->
  GetBasePathMapping
mkGetBasePathMapping pBasePath_ pDomainName_ =
  GetBasePathMapping'
    { basePath = pBasePath_,
      domainName = pDomainName_
    }

-- | [Required] The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.
--
-- /Note:/ Consider using 'basePath' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gBasePath :: Lens.Lens' GetBasePathMapping Lude.Text
gBasePath = Lens.lens (basePath :: GetBasePathMapping -> Lude.Text) (\s a -> s {basePath = a} :: GetBasePathMapping)
{-# DEPRECATED gBasePath "Use generic-lens or generic-optics with 'basePath' instead." #-}

-- | [Required] The domain name of the 'BasePathMapping' resource to be described.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gDomainName :: Lens.Lens' GetBasePathMapping Lude.Text
gDomainName = Lens.lens (domainName :: GetBasePathMapping -> Lude.Text) (\s a -> s {domainName = a} :: GetBasePathMapping)
{-# DEPRECATED gDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

instance Lude.AWSRequest GetBasePathMapping where
  type Rs GetBasePathMapping = BasePathMapping
  request = Req.get apiGatewayService
  response = Res.receiveJSON (\s h x -> Lude.eitherParseJSON x)

instance Lude.ToHeaders GetBasePathMapping where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          ["Accept" Lude.=# ("application/json" :: Lude.ByteString)]
      )

instance Lude.ToPath GetBasePathMapping where
  toPath GetBasePathMapping' {..} =
    Lude.mconcat
      [ "/domainnames/",
        Lude.toBS domainName,
        "/basepathmappings/",
        Lude.toBS basePath
      ]

instance Lude.ToQuery GetBasePathMapping where
  toQuery = Lude.const Lude.mempty
