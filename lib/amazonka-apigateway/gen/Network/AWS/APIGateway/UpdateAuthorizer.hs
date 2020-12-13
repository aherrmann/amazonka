{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.UpdateAuthorizer
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing 'Authorizer' resource.
--
-- <https://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html AWS CLI>
module Network.AWS.APIGateway.UpdateAuthorizer
  ( -- * Creating a request
    UpdateAuthorizer (..),
    mkUpdateAuthorizer,

    -- ** Request lenses
    uaAuthorizerId,
    uaRestAPIId,
    uaPatchOperations,

    -- * Destructuring the response
    Authorizer (..),
    mkAuthorizer,

    -- ** Response lenses
    aAuthorizerURI,
    aIdentityValidationExpression,
    aProviderARNs,
    aName,
    aId,
    aAuthorizerResultTtlInSeconds,
    aAuthType,
    aType,
    aIdentitySource,
    aAuthorizerCredentials,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Request to update an existing 'Authorizer' resource.
--
-- /See:/ 'mkUpdateAuthorizer' smart constructor.
data UpdateAuthorizer = UpdateAuthorizer'
  { -- | [Required] The identifier of the 'Authorizer' resource.
    authorizerId :: Lude.Text,
    -- | [Required] The string identifier of the associated 'RestApi' .
    restAPIId :: Lude.Text,
    -- | A list of update operations to be applied to the specified resource and in the order specified in this list.
    patchOperations :: Lude.Maybe [PatchOperation]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateAuthorizer' with the minimum fields required to make a request.
--
-- * 'authorizerId' - [Required] The identifier of the 'Authorizer' resource.
-- * 'restAPIId' - [Required] The string identifier of the associated 'RestApi' .
-- * 'patchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
mkUpdateAuthorizer ::
  -- | 'authorizerId'
  Lude.Text ->
  -- | 'restAPIId'
  Lude.Text ->
  UpdateAuthorizer
mkUpdateAuthorizer pAuthorizerId_ pRestAPIId_ =
  UpdateAuthorizer'
    { authorizerId = pAuthorizerId_,
      restAPIId = pRestAPIId_,
      patchOperations = Lude.Nothing
    }

-- | [Required] The identifier of the 'Authorizer' resource.
--
-- /Note:/ Consider using 'authorizerId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaAuthorizerId :: Lens.Lens' UpdateAuthorizer Lude.Text
uaAuthorizerId = Lens.lens (authorizerId :: UpdateAuthorizer -> Lude.Text) (\s a -> s {authorizerId = a} :: UpdateAuthorizer)
{-# DEPRECATED uaAuthorizerId "Use generic-lens or generic-optics with 'authorizerId' instead." #-}

-- | [Required] The string identifier of the associated 'RestApi' .
--
-- /Note:/ Consider using 'restAPIId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaRestAPIId :: Lens.Lens' UpdateAuthorizer Lude.Text
uaRestAPIId = Lens.lens (restAPIId :: UpdateAuthorizer -> Lude.Text) (\s a -> s {restAPIId = a} :: UpdateAuthorizer)
{-# DEPRECATED uaRestAPIId "Use generic-lens or generic-optics with 'restAPIId' instead." #-}

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- /Note:/ Consider using 'patchOperations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaPatchOperations :: Lens.Lens' UpdateAuthorizer (Lude.Maybe [PatchOperation])
uaPatchOperations = Lens.lens (patchOperations :: UpdateAuthorizer -> Lude.Maybe [PatchOperation]) (\s a -> s {patchOperations = a} :: UpdateAuthorizer)
{-# DEPRECATED uaPatchOperations "Use generic-lens or generic-optics with 'patchOperations' instead." #-}

instance Lude.AWSRequest UpdateAuthorizer where
  type Rs UpdateAuthorizer = Authorizer
  request = Req.patchJSON apiGatewayService
  response = Res.receiveJSON (\s h x -> Lude.eitherParseJSON x)

instance Lude.ToHeaders UpdateAuthorizer where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          ["Accept" Lude.=# ("application/json" :: Lude.ByteString)]
      )

instance Lude.ToJSON UpdateAuthorizer where
  toJSON UpdateAuthorizer' {..} =
    Lude.object
      ( Lude.catMaybes
          [("patchOperations" Lude..=) Lude.<$> patchOperations]
      )

instance Lude.ToPath UpdateAuthorizer where
  toPath UpdateAuthorizer' {..} =
    Lude.mconcat
      [ "/restapis/",
        Lude.toBS restAPIId,
        "/authorizers/",
        Lude.toBS authorizerId
      ]

instance Lude.ToQuery UpdateAuthorizer where
  toQuery = Lude.const Lude.mempty
