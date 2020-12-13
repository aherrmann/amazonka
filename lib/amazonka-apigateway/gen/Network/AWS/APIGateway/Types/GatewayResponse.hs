{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.GatewayResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.GatewayResponse
  ( GatewayResponse (..),

    -- * Smart constructor
    mkGatewayResponse,

    -- * Lenses
    gDefaultResponse,
    gResponseTemplates,
    gResponseType,
    gStatusCode,
    gResponseParameters,
  )
where

import Network.AWS.APIGateway.Types.GatewayResponseType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A gateway response of a given response type and status code, with optional response parameters and mapping templates.
--
-- For more information about valid gateway response types, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html Gateway Response Types Supported by API Gateway> __Example: Get a Gateway Response of a given response type__
-- __Request__
-- This example shows how to get a gateway response of the @MISSING_AUTHENTICATION_TOKEN@ type.
-- @@GET /restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN HTTP/1.1 Host: beta-apigateway.us-east-1.amazonaws.com Content-Type: application/json X-Amz-Date: 20170503T202516Z Authorization: AWS4-HMAC-SHA256 Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=1b52460e3159c1a26cff29093855d50ea141c1c5b937528fecaf60f51129697a Cache-Control: no-cache Postman-Token: 3b2a1ce9-c848-2e26-2e2f-9c2caefbed45 @ @ The response type is specified as a URL path.
-- __Response__
-- The successful operation returns the @200 OK@ status code and a payload similar to the following:
-- @@{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html", "name": "gatewayresponse", "templated": true }, "self": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:delete": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" } }, "defaultResponse": false, "responseParameters": { "gatewayresponse.header.x-request-path": "method.request.path.petId", "gatewayresponse.header.Access-Control-Allow-Origin": "'a.b.c'", "gatewayresponse.header.x-request-query": "method.request.querystring.q", "gatewayresponse.header.x-request-header": "method.request.header.Accept" }, "responseTemplates": { "application/json": "{\n \"message\": $context.error.messageString,\n \"type\": \"$context.error.responseType\",\n \"stage\": \"$context.stage\",\n \"resourcePath\": \"$context.resourcePath\",\n \"stageVariables.a\": \"$stageVariables.a\",\n \"statusCode\": \"'404'\"\n}" }, "responseType": "MISSING_AUTHENTICATION_TOKEN", "statusCode": "404" }@ @
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html Customize Gateway Responses>
--
-- /See:/ 'mkGatewayResponse' smart constructor.
data GatewayResponse = GatewayResponse'
  { -- | A Boolean flag to indicate whether this 'GatewayResponse' is the default gateway response (@true@ ) or not (@false@ ). A default gateway response is one generated by API Gateway without any customization by an API developer.
    defaultResponse :: Lude.Maybe Lude.Bool,
    -- | Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
    responseTemplates :: Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    -- | The response type of the associated 'GatewayResponse' . Valid values are
    --
    --     * ACCESS_DENIED
    --
    --     * API_CONFIGURATION_ERROR
    --
    --     * AUTHORIZER_FAILURE
    --
    --     * AUTHORIZER_CONFIGURATION_ERROR
    --
    --     * BAD_REQUEST_PARAMETERS
    --
    --     * BAD_REQUEST_BODY
    --
    --     * DEFAULT_4XX
    --
    --     * DEFAULT_5XX
    --
    --     * EXPIRED_TOKEN
    --
    --     * INVALID_SIGNATURE
    --
    --     * INTEGRATION_FAILURE
    --
    --     * INTEGRATION_TIMEOUT
    --
    --     * INVALID_API_KEY
    --
    --     * MISSING_AUTHENTICATION_TOKEN
    --
    --     * QUOTA_EXCEEDED
    --
    --     * REQUEST_TOO_LARGE
    --
    --     * RESOURCE_NOT_FOUND
    --
    --     * THROTTLED
    --
    --     * UNAUTHORIZED
    --
    --     * UNSUPPORTED_MEDIA_TYPE
    responseType :: Lude.Maybe GatewayResponseType,
    -- | The HTTP status code for this 'GatewayResponse' .
    statusCode :: Lude.Maybe Lude.Text,
    -- | Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
    responseParameters :: Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GatewayResponse' with the minimum fields required to make a request.
--
-- * 'defaultResponse' - A Boolean flag to indicate whether this 'GatewayResponse' is the default gateway response (@true@ ) or not (@false@ ). A default gateway response is one generated by API Gateway without any customization by an API developer.
-- * 'responseTemplates' - Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
-- * 'responseType' - The response type of the associated 'GatewayResponse' . Valid values are
--
--     * ACCESS_DENIED
--
--     * API_CONFIGURATION_ERROR
--
--     * AUTHORIZER_FAILURE
--
--     * AUTHORIZER_CONFIGURATION_ERROR
--
--     * BAD_REQUEST_PARAMETERS
--
--     * BAD_REQUEST_BODY
--
--     * DEFAULT_4XX
--
--     * DEFAULT_5XX
--
--     * EXPIRED_TOKEN
--
--     * INVALID_SIGNATURE
--
--     * INTEGRATION_FAILURE
--
--     * INTEGRATION_TIMEOUT
--
--     * INVALID_API_KEY
--
--     * MISSING_AUTHENTICATION_TOKEN
--
--     * QUOTA_EXCEEDED
--
--     * REQUEST_TOO_LARGE
--
--     * RESOURCE_NOT_FOUND
--
--     * THROTTLED
--
--     * UNAUTHORIZED
--
--     * UNSUPPORTED_MEDIA_TYPE
--
--
-- * 'statusCode' - The HTTP status code for this 'GatewayResponse' .
-- * 'responseParameters' - Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
mkGatewayResponse ::
  GatewayResponse
mkGatewayResponse =
  GatewayResponse'
    { defaultResponse = Lude.Nothing,
      responseTemplates = Lude.Nothing,
      responseType = Lude.Nothing,
      statusCode = Lude.Nothing,
      responseParameters = Lude.Nothing
    }

-- | A Boolean flag to indicate whether this 'GatewayResponse' is the default gateway response (@true@ ) or not (@false@ ). A default gateway response is one generated by API Gateway without any customization by an API developer.
--
-- /Note:/ Consider using 'defaultResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gDefaultResponse :: Lens.Lens' GatewayResponse (Lude.Maybe Lude.Bool)
gDefaultResponse = Lens.lens (defaultResponse :: GatewayResponse -> Lude.Maybe Lude.Bool) (\s a -> s {defaultResponse = a} :: GatewayResponse)
{-# DEPRECATED gDefaultResponse "Use generic-lens or generic-optics with 'defaultResponse' instead." #-}

-- | Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- /Note:/ Consider using 'responseTemplates' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gResponseTemplates :: Lens.Lens' GatewayResponse (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
gResponseTemplates = Lens.lens (responseTemplates :: GatewayResponse -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {responseTemplates = a} :: GatewayResponse)
{-# DEPRECATED gResponseTemplates "Use generic-lens or generic-optics with 'responseTemplates' instead." #-}

-- | The response type of the associated 'GatewayResponse' . Valid values are
--
--     * ACCESS_DENIED
--
--     * API_CONFIGURATION_ERROR
--
--     * AUTHORIZER_FAILURE
--
--     * AUTHORIZER_CONFIGURATION_ERROR
--
--     * BAD_REQUEST_PARAMETERS
--
--     * BAD_REQUEST_BODY
--
--     * DEFAULT_4XX
--
--     * DEFAULT_5XX
--
--     * EXPIRED_TOKEN
--
--     * INVALID_SIGNATURE
--
--     * INTEGRATION_FAILURE
--
--     * INTEGRATION_TIMEOUT
--
--     * INVALID_API_KEY
--
--     * MISSING_AUTHENTICATION_TOKEN
--
--     * QUOTA_EXCEEDED
--
--     * REQUEST_TOO_LARGE
--
--     * RESOURCE_NOT_FOUND
--
--     * THROTTLED
--
--     * UNAUTHORIZED
--
--     * UNSUPPORTED_MEDIA_TYPE
--
--
--
-- /Note:/ Consider using 'responseType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gResponseType :: Lens.Lens' GatewayResponse (Lude.Maybe GatewayResponseType)
gResponseType = Lens.lens (responseType :: GatewayResponse -> Lude.Maybe GatewayResponseType) (\s a -> s {responseType = a} :: GatewayResponse)
{-# DEPRECATED gResponseType "Use generic-lens or generic-optics with 'responseType' instead." #-}

-- | The HTTP status code for this 'GatewayResponse' .
--
-- /Note:/ Consider using 'statusCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gStatusCode :: Lens.Lens' GatewayResponse (Lude.Maybe Lude.Text)
gStatusCode = Lens.lens (statusCode :: GatewayResponse -> Lude.Maybe Lude.Text) (\s a -> s {statusCode = a} :: GatewayResponse)
{-# DEPRECATED gStatusCode "Use generic-lens or generic-optics with 'statusCode' instead." #-}

-- | Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- /Note:/ Consider using 'responseParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gResponseParameters :: Lens.Lens' GatewayResponse (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
gResponseParameters = Lens.lens (responseParameters :: GatewayResponse -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {responseParameters = a} :: GatewayResponse)
{-# DEPRECATED gResponseParameters "Use generic-lens or generic-optics with 'responseParameters' instead." #-}

instance Lude.FromJSON GatewayResponse where
  parseJSON =
    Lude.withObject
      "GatewayResponse"
      ( \x ->
          GatewayResponse'
            Lude.<$> (x Lude..:? "defaultResponse")
            Lude.<*> (x Lude..:? "responseTemplates" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "responseType")
            Lude.<*> (x Lude..:? "statusCode")
            Lude.<*> (x Lude..:? "responseParameters" Lude..!= Lude.mempty)
      )
