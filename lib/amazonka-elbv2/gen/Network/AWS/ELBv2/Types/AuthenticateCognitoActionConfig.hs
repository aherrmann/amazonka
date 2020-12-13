{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.AuthenticateCognitoActionConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.AuthenticateCognitoActionConfig
  ( AuthenticateCognitoActionConfig (..),

    -- * Smart constructor
    mkAuthenticateCognitoActionConfig,

    -- * Lenses
    acacUserPoolARN,
    acacAuthenticationRequestExtraParams,
    acacScope,
    acacOnUnauthenticatedRequest,
    acacSessionCookieName,
    acacSessionTimeout,
    acacUserPoolDomain,
    acacUserPoolClientId,
  )
where

import Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Request parameters to use when integrating with Amazon Cognito to authenticate users.
--
-- /See:/ 'mkAuthenticateCognitoActionConfig' smart constructor.
data AuthenticateCognitoActionConfig = AuthenticateCognitoActionConfig'
  { -- | The Amazon Resource Name (ARN) of the Amazon Cognito user pool.
    userPoolARN :: Lude.Text,
    -- | The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
    authenticationRequestExtraParams :: Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    -- | The set of user claims to be requested from the IdP. The default is @openid@ .
    --
    -- To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
    scope :: Lude.Maybe Lude.Text,
    -- | The behavior if the user is not authenticated. The following are possible values:
    --
    --
    --     * deny- Return an HTTP 401 Unauthorized error.
    --
    --
    --     * allow- Allow the request to be forwarded to the target.
    --
    --
    --     * authenticate- Redirect the request to the IdP authorization endpoint. This is the default value.
    onUnauthenticatedRequest :: Lude.Maybe AuthenticateCognitoActionConditionalBehaviorEnum,
    -- | The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
    sessionCookieName :: Lude.Maybe Lude.Text,
    -- | The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
    sessionTimeout :: Lude.Maybe Lude.Integer,
    -- | The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.
    userPoolDomain :: Lude.Text,
    -- | The ID of the Amazon Cognito user pool client.
    userPoolClientId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AuthenticateCognitoActionConfig' with the minimum fields required to make a request.
--
-- * 'userPoolARN' - The Amazon Resource Name (ARN) of the Amazon Cognito user pool.
-- * 'authenticationRequestExtraParams' - The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
-- * 'scope' - The set of user claims to be requested from the IdP. The default is @openid@ .
--
-- To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
-- * 'onUnauthenticatedRequest' - The behavior if the user is not authenticated. The following are possible values:
--
--
--     * deny- Return an HTTP 401 Unauthorized error.
--
--
--     * allow- Allow the request to be forwarded to the target.
--
--
--     * authenticate- Redirect the request to the IdP authorization endpoint. This is the default value.
--
--
-- * 'sessionCookieName' - The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
-- * 'sessionTimeout' - The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
-- * 'userPoolDomain' - The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.
-- * 'userPoolClientId' - The ID of the Amazon Cognito user pool client.
mkAuthenticateCognitoActionConfig ::
  -- | 'userPoolARN'
  Lude.Text ->
  -- | 'userPoolDomain'
  Lude.Text ->
  -- | 'userPoolClientId'
  Lude.Text ->
  AuthenticateCognitoActionConfig
mkAuthenticateCognitoActionConfig
  pUserPoolARN_
  pUserPoolDomain_
  pUserPoolClientId_ =
    AuthenticateCognitoActionConfig'
      { userPoolARN = pUserPoolARN_,
        authenticationRequestExtraParams = Lude.Nothing,
        scope = Lude.Nothing,
        onUnauthenticatedRequest = Lude.Nothing,
        sessionCookieName = Lude.Nothing,
        sessionTimeout = Lude.Nothing,
        userPoolDomain = pUserPoolDomain_,
        userPoolClientId = pUserPoolClientId_
      }

-- | The Amazon Resource Name (ARN) of the Amazon Cognito user pool.
--
-- /Note:/ Consider using 'userPoolARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacUserPoolARN :: Lens.Lens' AuthenticateCognitoActionConfig Lude.Text
acacUserPoolARN = Lens.lens (userPoolARN :: AuthenticateCognitoActionConfig -> Lude.Text) (\s a -> s {userPoolARN = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacUserPoolARN "Use generic-lens or generic-optics with 'userPoolARN' instead." #-}

-- | The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
--
-- /Note:/ Consider using 'authenticationRequestExtraParams' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacAuthenticationRequestExtraParams :: Lens.Lens' AuthenticateCognitoActionConfig (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
acacAuthenticationRequestExtraParams = Lens.lens (authenticationRequestExtraParams :: AuthenticateCognitoActionConfig -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {authenticationRequestExtraParams = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacAuthenticationRequestExtraParams "Use generic-lens or generic-optics with 'authenticationRequestExtraParams' instead." #-}

-- | The set of user claims to be requested from the IdP. The default is @openid@ .
--
-- To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
--
-- /Note:/ Consider using 'scope' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacScope :: Lens.Lens' AuthenticateCognitoActionConfig (Lude.Maybe Lude.Text)
acacScope = Lens.lens (scope :: AuthenticateCognitoActionConfig -> Lude.Maybe Lude.Text) (\s a -> s {scope = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacScope "Use generic-lens or generic-optics with 'scope' instead." #-}

-- | The behavior if the user is not authenticated. The following are possible values:
--
--
--     * deny- Return an HTTP 401 Unauthorized error.
--
--
--     * allow- Allow the request to be forwarded to the target.
--
--
--     * authenticate- Redirect the request to the IdP authorization endpoint. This is the default value.
--
--
--
-- /Note:/ Consider using 'onUnauthenticatedRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacOnUnauthenticatedRequest :: Lens.Lens' AuthenticateCognitoActionConfig (Lude.Maybe AuthenticateCognitoActionConditionalBehaviorEnum)
acacOnUnauthenticatedRequest = Lens.lens (onUnauthenticatedRequest :: AuthenticateCognitoActionConfig -> Lude.Maybe AuthenticateCognitoActionConditionalBehaviorEnum) (\s a -> s {onUnauthenticatedRequest = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacOnUnauthenticatedRequest "Use generic-lens or generic-optics with 'onUnauthenticatedRequest' instead." #-}

-- | The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
--
-- /Note:/ Consider using 'sessionCookieName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacSessionCookieName :: Lens.Lens' AuthenticateCognitoActionConfig (Lude.Maybe Lude.Text)
acacSessionCookieName = Lens.lens (sessionCookieName :: AuthenticateCognitoActionConfig -> Lude.Maybe Lude.Text) (\s a -> s {sessionCookieName = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacSessionCookieName "Use generic-lens or generic-optics with 'sessionCookieName' instead." #-}

-- | The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
--
-- /Note:/ Consider using 'sessionTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacSessionTimeout :: Lens.Lens' AuthenticateCognitoActionConfig (Lude.Maybe Lude.Integer)
acacSessionTimeout = Lens.lens (sessionTimeout :: AuthenticateCognitoActionConfig -> Lude.Maybe Lude.Integer) (\s a -> s {sessionTimeout = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacSessionTimeout "Use generic-lens or generic-optics with 'sessionTimeout' instead." #-}

-- | The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.
--
-- /Note:/ Consider using 'userPoolDomain' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacUserPoolDomain :: Lens.Lens' AuthenticateCognitoActionConfig Lude.Text
acacUserPoolDomain = Lens.lens (userPoolDomain :: AuthenticateCognitoActionConfig -> Lude.Text) (\s a -> s {userPoolDomain = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacUserPoolDomain "Use generic-lens or generic-optics with 'userPoolDomain' instead." #-}

-- | The ID of the Amazon Cognito user pool client.
--
-- /Note:/ Consider using 'userPoolClientId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acacUserPoolClientId :: Lens.Lens' AuthenticateCognitoActionConfig Lude.Text
acacUserPoolClientId = Lens.lens (userPoolClientId :: AuthenticateCognitoActionConfig -> Lude.Text) (\s a -> s {userPoolClientId = a} :: AuthenticateCognitoActionConfig)
{-# DEPRECATED acacUserPoolClientId "Use generic-lens or generic-optics with 'userPoolClientId' instead." #-}

instance Lude.FromXML AuthenticateCognitoActionConfig where
  parseXML x =
    AuthenticateCognitoActionConfig'
      Lude.<$> (x Lude..@ "UserPoolArn")
      Lude.<*> ( x Lude..@? "AuthenticationRequestExtraParams" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLMap "entry" "key" "value")
               )
      Lude.<*> (x Lude..@? "Scope")
      Lude.<*> (x Lude..@? "OnUnauthenticatedRequest")
      Lude.<*> (x Lude..@? "SessionCookieName")
      Lude.<*> (x Lude..@? "SessionTimeout")
      Lude.<*> (x Lude..@ "UserPoolDomain")
      Lude.<*> (x Lude..@ "UserPoolClientId")

instance Lude.ToQuery AuthenticateCognitoActionConfig where
  toQuery AuthenticateCognitoActionConfig' {..} =
    Lude.mconcat
      [ "UserPoolArn" Lude.=: userPoolARN,
        "AuthenticationRequestExtraParams"
          Lude.=: Lude.toQuery
            ( Lude.toQueryMap "entry" "key" "value"
                Lude.<$> authenticationRequestExtraParams
            ),
        "Scope" Lude.=: scope,
        "OnUnauthenticatedRequest" Lude.=: onUnauthenticatedRequest,
        "SessionCookieName" Lude.=: sessionCookieName,
        "SessionTimeout" Lude.=: sessionTimeout,
        "UserPoolDomain" Lude.=: userPoolDomain,
        "UserPoolClientId" Lude.=: userPoolClientId
      ]
