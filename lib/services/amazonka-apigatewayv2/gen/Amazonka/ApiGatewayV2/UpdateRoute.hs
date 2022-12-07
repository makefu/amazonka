{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ApiGatewayV2.UpdateRoute
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Route.
module Amazonka.ApiGatewayV2.UpdateRoute
  ( -- * Creating a Request
    UpdateRoute (..),
    newUpdateRoute,

    -- * Request Lenses
    updateRoute_requestModels,
    updateRoute_requestParameters,
    updateRoute_apiKeyRequired,
    updateRoute_target,
    updateRoute_modelSelectionExpression,
    updateRoute_routeKey,
    updateRoute_authorizationScopes,
    updateRoute_authorizationType,
    updateRoute_operationName,
    updateRoute_routeResponseSelectionExpression,
    updateRoute_authorizerId,
    updateRoute_apiId,
    updateRoute_routeId,

    -- * Destructuring the Response
    UpdateRouteResponse' (..),
    newUpdateRouteResponse',

    -- * Response Lenses
    updateRouteResponse'_requestModels,
    updateRouteResponse'_requestParameters,
    updateRouteResponse'_apiKeyRequired,
    updateRouteResponse'_target,
    updateRouteResponse'_modelSelectionExpression,
    updateRouteResponse'_routeKey,
    updateRouteResponse'_routeId,
    updateRouteResponse'_authorizationScopes,
    updateRouteResponse'_authorizationType,
    updateRouteResponse'_operationName,
    updateRouteResponse'_apiGatewayManaged,
    updateRouteResponse'_routeResponseSelectionExpression,
    updateRouteResponse'_authorizerId,
    updateRouteResponse'_httpStatus,
  )
where

import Amazonka.ApiGatewayV2.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Updates a Route.
--
-- /See:/ 'newUpdateRoute' smart constructor.
data UpdateRoute = UpdateRoute'
  { -- | The request models for the route. Supported only for WebSocket APIs.
    requestModels :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The request parameters for the route. Supported only for WebSocket APIs.
    requestParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints),
    -- | Specifies whether an API key is required for the route. Supported only
    -- for WebSocket APIs.
    apiKeyRequired :: Prelude.Maybe Prelude.Bool,
    -- | The target for the route.
    target :: Prelude.Maybe Prelude.Text,
    -- | The model selection expression for the route. Supported only for
    -- WebSocket APIs.
    modelSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The route key for the route.
    routeKey :: Prelude.Maybe Prelude.Text,
    -- | The authorization scopes supported by this route.
    authorizationScopes :: Prelude.Maybe [Prelude.Text],
    -- | The authorization type for the route. For WebSocket APIs, valid values
    -- are NONE for open access, AWS_IAM for using AWS IAM permissions, and
    -- CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are
    -- NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using
    -- AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
    authorizationType :: Prelude.Maybe AuthorizationType,
    -- | The operation name for the route.
    operationName :: Prelude.Maybe Prelude.Text,
    -- | The route response selection expression for the route. Supported only
    -- for WebSocket APIs.
    routeResponseSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the Authorizer resource to be associated with this
    -- route. The authorizer identifier is generated by API Gateway when you
    -- created the authorizer.
    authorizerId :: Prelude.Maybe Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The route ID.
    routeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestModels', 'updateRoute_requestModels' - The request models for the route. Supported only for WebSocket APIs.
--
-- 'requestParameters', 'updateRoute_requestParameters' - The request parameters for the route. Supported only for WebSocket APIs.
--
-- 'apiKeyRequired', 'updateRoute_apiKeyRequired' - Specifies whether an API key is required for the route. Supported only
-- for WebSocket APIs.
--
-- 'target', 'updateRoute_target' - The target for the route.
--
-- 'modelSelectionExpression', 'updateRoute_modelSelectionExpression' - The model selection expression for the route. Supported only for
-- WebSocket APIs.
--
-- 'routeKey', 'updateRoute_routeKey' - The route key for the route.
--
-- 'authorizationScopes', 'updateRoute_authorizationScopes' - The authorization scopes supported by this route.
--
-- 'authorizationType', 'updateRoute_authorizationType' - The authorization type for the route. For WebSocket APIs, valid values
-- are NONE for open access, AWS_IAM for using AWS IAM permissions, and
-- CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are
-- NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using
-- AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
--
-- 'operationName', 'updateRoute_operationName' - The operation name for the route.
--
-- 'routeResponseSelectionExpression', 'updateRoute_routeResponseSelectionExpression' - The route response selection expression for the route. Supported only
-- for WebSocket APIs.
--
-- 'authorizerId', 'updateRoute_authorizerId' - The identifier of the Authorizer resource to be associated with this
-- route. The authorizer identifier is generated by API Gateway when you
-- created the authorizer.
--
-- 'apiId', 'updateRoute_apiId' - The API identifier.
--
-- 'routeId', 'updateRoute_routeId' - The route ID.
newUpdateRoute ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'routeId'
  Prelude.Text ->
  UpdateRoute
newUpdateRoute pApiId_ pRouteId_ =
  UpdateRoute'
    { requestModels = Prelude.Nothing,
      requestParameters = Prelude.Nothing,
      apiKeyRequired = Prelude.Nothing,
      target = Prelude.Nothing,
      modelSelectionExpression = Prelude.Nothing,
      routeKey = Prelude.Nothing,
      authorizationScopes = Prelude.Nothing,
      authorizationType = Prelude.Nothing,
      operationName = Prelude.Nothing,
      routeResponseSelectionExpression = Prelude.Nothing,
      authorizerId = Prelude.Nothing,
      apiId = pApiId_,
      routeId = pRouteId_
    }

-- | The request models for the route. Supported only for WebSocket APIs.
updateRoute_requestModels :: Lens.Lens' UpdateRoute (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateRoute_requestModels = Lens.lens (\UpdateRoute' {requestModels} -> requestModels) (\s@UpdateRoute' {} a -> s {requestModels = a} :: UpdateRoute) Prelude.. Lens.mapping Lens.coerced

-- | The request parameters for the route. Supported only for WebSocket APIs.
updateRoute_requestParameters :: Lens.Lens' UpdateRoute (Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints))
updateRoute_requestParameters = Lens.lens (\UpdateRoute' {requestParameters} -> requestParameters) (\s@UpdateRoute' {} a -> s {requestParameters = a} :: UpdateRoute) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether an API key is required for the route. Supported only
-- for WebSocket APIs.
updateRoute_apiKeyRequired :: Lens.Lens' UpdateRoute (Prelude.Maybe Prelude.Bool)
updateRoute_apiKeyRequired = Lens.lens (\UpdateRoute' {apiKeyRequired} -> apiKeyRequired) (\s@UpdateRoute' {} a -> s {apiKeyRequired = a} :: UpdateRoute)

-- | The target for the route.
updateRoute_target :: Lens.Lens' UpdateRoute (Prelude.Maybe Prelude.Text)
updateRoute_target = Lens.lens (\UpdateRoute' {target} -> target) (\s@UpdateRoute' {} a -> s {target = a} :: UpdateRoute)

-- | The model selection expression for the route. Supported only for
-- WebSocket APIs.
updateRoute_modelSelectionExpression :: Lens.Lens' UpdateRoute (Prelude.Maybe Prelude.Text)
updateRoute_modelSelectionExpression = Lens.lens (\UpdateRoute' {modelSelectionExpression} -> modelSelectionExpression) (\s@UpdateRoute' {} a -> s {modelSelectionExpression = a} :: UpdateRoute)

-- | The route key for the route.
updateRoute_routeKey :: Lens.Lens' UpdateRoute (Prelude.Maybe Prelude.Text)
updateRoute_routeKey = Lens.lens (\UpdateRoute' {routeKey} -> routeKey) (\s@UpdateRoute' {} a -> s {routeKey = a} :: UpdateRoute)

-- | The authorization scopes supported by this route.
updateRoute_authorizationScopes :: Lens.Lens' UpdateRoute (Prelude.Maybe [Prelude.Text])
updateRoute_authorizationScopes = Lens.lens (\UpdateRoute' {authorizationScopes} -> authorizationScopes) (\s@UpdateRoute' {} a -> s {authorizationScopes = a} :: UpdateRoute) Prelude.. Lens.mapping Lens.coerced

-- | The authorization type for the route. For WebSocket APIs, valid values
-- are NONE for open access, AWS_IAM for using AWS IAM permissions, and
-- CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are
-- NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using
-- AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
updateRoute_authorizationType :: Lens.Lens' UpdateRoute (Prelude.Maybe AuthorizationType)
updateRoute_authorizationType = Lens.lens (\UpdateRoute' {authorizationType} -> authorizationType) (\s@UpdateRoute' {} a -> s {authorizationType = a} :: UpdateRoute)

-- | The operation name for the route.
updateRoute_operationName :: Lens.Lens' UpdateRoute (Prelude.Maybe Prelude.Text)
updateRoute_operationName = Lens.lens (\UpdateRoute' {operationName} -> operationName) (\s@UpdateRoute' {} a -> s {operationName = a} :: UpdateRoute)

-- | The route response selection expression for the route. Supported only
-- for WebSocket APIs.
updateRoute_routeResponseSelectionExpression :: Lens.Lens' UpdateRoute (Prelude.Maybe Prelude.Text)
updateRoute_routeResponseSelectionExpression = Lens.lens (\UpdateRoute' {routeResponseSelectionExpression} -> routeResponseSelectionExpression) (\s@UpdateRoute' {} a -> s {routeResponseSelectionExpression = a} :: UpdateRoute)

-- | The identifier of the Authorizer resource to be associated with this
-- route. The authorizer identifier is generated by API Gateway when you
-- created the authorizer.
updateRoute_authorizerId :: Lens.Lens' UpdateRoute (Prelude.Maybe Prelude.Text)
updateRoute_authorizerId = Lens.lens (\UpdateRoute' {authorizerId} -> authorizerId) (\s@UpdateRoute' {} a -> s {authorizerId = a} :: UpdateRoute)

-- | The API identifier.
updateRoute_apiId :: Lens.Lens' UpdateRoute Prelude.Text
updateRoute_apiId = Lens.lens (\UpdateRoute' {apiId} -> apiId) (\s@UpdateRoute' {} a -> s {apiId = a} :: UpdateRoute)

-- | The route ID.
updateRoute_routeId :: Lens.Lens' UpdateRoute Prelude.Text
updateRoute_routeId = Lens.lens (\UpdateRoute' {routeId} -> routeId) (\s@UpdateRoute' {} a -> s {routeId = a} :: UpdateRoute)

instance Core.AWSRequest UpdateRoute where
  type AWSResponse UpdateRoute = UpdateRouteResponse'
  request overrides =
    Request.patchJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateRouteResponse''
            Prelude.<$> (x Data..?> "requestModels" Core..!@ Prelude.mempty)
            Prelude.<*> ( x Data..?> "requestParameters"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Data..?> "apiKeyRequired")
            Prelude.<*> (x Data..?> "target")
            Prelude.<*> (x Data..?> "modelSelectionExpression")
            Prelude.<*> (x Data..?> "routeKey")
            Prelude.<*> (x Data..?> "routeId")
            Prelude.<*> ( x Data..?> "authorizationScopes"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Data..?> "authorizationType")
            Prelude.<*> (x Data..?> "operationName")
            Prelude.<*> (x Data..?> "apiGatewayManaged")
            Prelude.<*> (x Data..?> "routeResponseSelectionExpression")
            Prelude.<*> (x Data..?> "authorizerId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateRoute where
  hashWithSalt _salt UpdateRoute' {..} =
    _salt `Prelude.hashWithSalt` requestModels
      `Prelude.hashWithSalt` requestParameters
      `Prelude.hashWithSalt` apiKeyRequired
      `Prelude.hashWithSalt` target
      `Prelude.hashWithSalt` modelSelectionExpression
      `Prelude.hashWithSalt` routeKey
      `Prelude.hashWithSalt` authorizationScopes
      `Prelude.hashWithSalt` authorizationType
      `Prelude.hashWithSalt` operationName
      `Prelude.hashWithSalt` routeResponseSelectionExpression
      `Prelude.hashWithSalt` authorizerId
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` routeId

instance Prelude.NFData UpdateRoute where
  rnf UpdateRoute' {..} =
    Prelude.rnf requestModels
      `Prelude.seq` Prelude.rnf requestParameters
      `Prelude.seq` Prelude.rnf apiKeyRequired
      `Prelude.seq` Prelude.rnf target
      `Prelude.seq` Prelude.rnf modelSelectionExpression
      `Prelude.seq` Prelude.rnf routeKey
      `Prelude.seq` Prelude.rnf authorizationScopes
      `Prelude.seq` Prelude.rnf authorizationType
      `Prelude.seq` Prelude.rnf operationName
      `Prelude.seq` Prelude.rnf routeResponseSelectionExpression
      `Prelude.seq` Prelude.rnf authorizerId
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf routeId

instance Data.ToHeaders UpdateRoute where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON UpdateRoute where
  toJSON UpdateRoute' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("requestModels" Data..=) Prelude.<$> requestModels,
            ("requestParameters" Data..=)
              Prelude.<$> requestParameters,
            ("apiKeyRequired" Data..=)
              Prelude.<$> apiKeyRequired,
            ("target" Data..=) Prelude.<$> target,
            ("modelSelectionExpression" Data..=)
              Prelude.<$> modelSelectionExpression,
            ("routeKey" Data..=) Prelude.<$> routeKey,
            ("authorizationScopes" Data..=)
              Prelude.<$> authorizationScopes,
            ("authorizationType" Data..=)
              Prelude.<$> authorizationType,
            ("operationName" Data..=) Prelude.<$> operationName,
            ("routeResponseSelectionExpression" Data..=)
              Prelude.<$> routeResponseSelectionExpression,
            ("authorizerId" Data..=) Prelude.<$> authorizerId
          ]
      )

instance Data.ToPath UpdateRoute where
  toPath UpdateRoute' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Data.toBS apiId,
        "/routes/",
        Data.toBS routeId
      ]

instance Data.ToQuery UpdateRoute where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateRouteResponse'' smart constructor.
data UpdateRouteResponse' = UpdateRouteResponse''
  { -- | The request models for the route. Supported only for WebSocket APIs.
    requestModels :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The request parameters for the route. Supported only for WebSocket APIs.
    requestParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints),
    -- | Specifies whether an API key is required for this route. Supported only
    -- for WebSocket APIs.
    apiKeyRequired :: Prelude.Maybe Prelude.Bool,
    -- | The target for the route.
    target :: Prelude.Maybe Prelude.Text,
    -- | The model selection expression for the route. Supported only for
    -- WebSocket APIs.
    modelSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The route key for the route.
    routeKey :: Prelude.Maybe Prelude.Text,
    -- | The route ID.
    routeId :: Prelude.Maybe Prelude.Text,
    -- | A list of authorization scopes configured on a route. The scopes are
    -- used with a JWT authorizer to authorize the method invocation. The
    -- authorization works by matching the route scopes against the scopes
    -- parsed from the access token in the incoming request. The method
    -- invocation is authorized if any route scope matches a claimed scope in
    -- the access token. Otherwise, the invocation is not authorized. When the
    -- route scope is configured, the client must provide an access token
    -- instead of an identity token for authorization purposes.
    authorizationScopes :: Prelude.Maybe [Prelude.Text],
    -- | The authorization type for the route. For WebSocket APIs, valid values
    -- are NONE for open access, AWS_IAM for using AWS IAM permissions, and
    -- CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are
    -- NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using
    -- AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
    authorizationType :: Prelude.Maybe AuthorizationType,
    -- | The operation name for the route.
    operationName :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether a route is managed by API Gateway. If you created an
    -- API using quick create, the $default route is managed by API Gateway.
    -- You can\'t modify the $default route key.
    apiGatewayManaged :: Prelude.Maybe Prelude.Bool,
    -- | The route response selection expression for the route. Supported only
    -- for WebSocket APIs.
    routeResponseSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the Authorizer resource to be associated with this
    -- route. The authorizer identifier is generated by API Gateway when you
    -- created the authorizer.
    authorizerId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRouteResponse'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestModels', 'updateRouteResponse'_requestModels' - The request models for the route. Supported only for WebSocket APIs.
--
-- 'requestParameters', 'updateRouteResponse'_requestParameters' - The request parameters for the route. Supported only for WebSocket APIs.
--
-- 'apiKeyRequired', 'updateRouteResponse'_apiKeyRequired' - Specifies whether an API key is required for this route. Supported only
-- for WebSocket APIs.
--
-- 'target', 'updateRouteResponse'_target' - The target for the route.
--
-- 'modelSelectionExpression', 'updateRouteResponse'_modelSelectionExpression' - The model selection expression for the route. Supported only for
-- WebSocket APIs.
--
-- 'routeKey', 'updateRouteResponse'_routeKey' - The route key for the route.
--
-- 'routeId', 'updateRouteResponse'_routeId' - The route ID.
--
-- 'authorizationScopes', 'updateRouteResponse'_authorizationScopes' - A list of authorization scopes configured on a route. The scopes are
-- used with a JWT authorizer to authorize the method invocation. The
-- authorization works by matching the route scopes against the scopes
-- parsed from the access token in the incoming request. The method
-- invocation is authorized if any route scope matches a claimed scope in
-- the access token. Otherwise, the invocation is not authorized. When the
-- route scope is configured, the client must provide an access token
-- instead of an identity token for authorization purposes.
--
-- 'authorizationType', 'updateRouteResponse'_authorizationType' - The authorization type for the route. For WebSocket APIs, valid values
-- are NONE for open access, AWS_IAM for using AWS IAM permissions, and
-- CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are
-- NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using
-- AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
--
-- 'operationName', 'updateRouteResponse'_operationName' - The operation name for the route.
--
-- 'apiGatewayManaged', 'updateRouteResponse'_apiGatewayManaged' - Specifies whether a route is managed by API Gateway. If you created an
-- API using quick create, the $default route is managed by API Gateway.
-- You can\'t modify the $default route key.
--
-- 'routeResponseSelectionExpression', 'updateRouteResponse'_routeResponseSelectionExpression' - The route response selection expression for the route. Supported only
-- for WebSocket APIs.
--
-- 'authorizerId', 'updateRouteResponse'_authorizerId' - The identifier of the Authorizer resource to be associated with this
-- route. The authorizer identifier is generated by API Gateway when you
-- created the authorizer.
--
-- 'httpStatus', 'updateRouteResponse'_httpStatus' - The response's http status code.
newUpdateRouteResponse' ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateRouteResponse'
newUpdateRouteResponse' pHttpStatus_ =
  UpdateRouteResponse''
    { requestModels =
        Prelude.Nothing,
      requestParameters = Prelude.Nothing,
      apiKeyRequired = Prelude.Nothing,
      target = Prelude.Nothing,
      modelSelectionExpression = Prelude.Nothing,
      routeKey = Prelude.Nothing,
      routeId = Prelude.Nothing,
      authorizationScopes = Prelude.Nothing,
      authorizationType = Prelude.Nothing,
      operationName = Prelude.Nothing,
      apiGatewayManaged = Prelude.Nothing,
      routeResponseSelectionExpression = Prelude.Nothing,
      authorizerId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request models for the route. Supported only for WebSocket APIs.
updateRouteResponse'_requestModels :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateRouteResponse'_requestModels = Lens.lens (\UpdateRouteResponse'' {requestModels} -> requestModels) (\s@UpdateRouteResponse'' {} a -> s {requestModels = a} :: UpdateRouteResponse') Prelude.. Lens.mapping Lens.coerced

-- | The request parameters for the route. Supported only for WebSocket APIs.
updateRouteResponse'_requestParameters :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints))
updateRouteResponse'_requestParameters = Lens.lens (\UpdateRouteResponse'' {requestParameters} -> requestParameters) (\s@UpdateRouteResponse'' {} a -> s {requestParameters = a} :: UpdateRouteResponse') Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether an API key is required for this route. Supported only
-- for WebSocket APIs.
updateRouteResponse'_apiKeyRequired :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Bool)
updateRouteResponse'_apiKeyRequired = Lens.lens (\UpdateRouteResponse'' {apiKeyRequired} -> apiKeyRequired) (\s@UpdateRouteResponse'' {} a -> s {apiKeyRequired = a} :: UpdateRouteResponse')

-- | The target for the route.
updateRouteResponse'_target :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Text)
updateRouteResponse'_target = Lens.lens (\UpdateRouteResponse'' {target} -> target) (\s@UpdateRouteResponse'' {} a -> s {target = a} :: UpdateRouteResponse')

-- | The model selection expression for the route. Supported only for
-- WebSocket APIs.
updateRouteResponse'_modelSelectionExpression :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Text)
updateRouteResponse'_modelSelectionExpression = Lens.lens (\UpdateRouteResponse'' {modelSelectionExpression} -> modelSelectionExpression) (\s@UpdateRouteResponse'' {} a -> s {modelSelectionExpression = a} :: UpdateRouteResponse')

-- | The route key for the route.
updateRouteResponse'_routeKey :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Text)
updateRouteResponse'_routeKey = Lens.lens (\UpdateRouteResponse'' {routeKey} -> routeKey) (\s@UpdateRouteResponse'' {} a -> s {routeKey = a} :: UpdateRouteResponse')

-- | The route ID.
updateRouteResponse'_routeId :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Text)
updateRouteResponse'_routeId = Lens.lens (\UpdateRouteResponse'' {routeId} -> routeId) (\s@UpdateRouteResponse'' {} a -> s {routeId = a} :: UpdateRouteResponse')

-- | A list of authorization scopes configured on a route. The scopes are
-- used with a JWT authorizer to authorize the method invocation. The
-- authorization works by matching the route scopes against the scopes
-- parsed from the access token in the incoming request. The method
-- invocation is authorized if any route scope matches a claimed scope in
-- the access token. Otherwise, the invocation is not authorized. When the
-- route scope is configured, the client must provide an access token
-- instead of an identity token for authorization purposes.
updateRouteResponse'_authorizationScopes :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe [Prelude.Text])
updateRouteResponse'_authorizationScopes = Lens.lens (\UpdateRouteResponse'' {authorizationScopes} -> authorizationScopes) (\s@UpdateRouteResponse'' {} a -> s {authorizationScopes = a} :: UpdateRouteResponse') Prelude.. Lens.mapping Lens.coerced

-- | The authorization type for the route. For WebSocket APIs, valid values
-- are NONE for open access, AWS_IAM for using AWS IAM permissions, and
-- CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are
-- NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using
-- AWS IAM permissions, and CUSTOM for using a Lambda authorizer.
updateRouteResponse'_authorizationType :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe AuthorizationType)
updateRouteResponse'_authorizationType = Lens.lens (\UpdateRouteResponse'' {authorizationType} -> authorizationType) (\s@UpdateRouteResponse'' {} a -> s {authorizationType = a} :: UpdateRouteResponse')

-- | The operation name for the route.
updateRouteResponse'_operationName :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Text)
updateRouteResponse'_operationName = Lens.lens (\UpdateRouteResponse'' {operationName} -> operationName) (\s@UpdateRouteResponse'' {} a -> s {operationName = a} :: UpdateRouteResponse')

-- | Specifies whether a route is managed by API Gateway. If you created an
-- API using quick create, the $default route is managed by API Gateway.
-- You can\'t modify the $default route key.
updateRouteResponse'_apiGatewayManaged :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Bool)
updateRouteResponse'_apiGatewayManaged = Lens.lens (\UpdateRouteResponse'' {apiGatewayManaged} -> apiGatewayManaged) (\s@UpdateRouteResponse'' {} a -> s {apiGatewayManaged = a} :: UpdateRouteResponse')

-- | The route response selection expression for the route. Supported only
-- for WebSocket APIs.
updateRouteResponse'_routeResponseSelectionExpression :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Text)
updateRouteResponse'_routeResponseSelectionExpression = Lens.lens (\UpdateRouteResponse'' {routeResponseSelectionExpression} -> routeResponseSelectionExpression) (\s@UpdateRouteResponse'' {} a -> s {routeResponseSelectionExpression = a} :: UpdateRouteResponse')

-- | The identifier of the Authorizer resource to be associated with this
-- route. The authorizer identifier is generated by API Gateway when you
-- created the authorizer.
updateRouteResponse'_authorizerId :: Lens.Lens' UpdateRouteResponse' (Prelude.Maybe Prelude.Text)
updateRouteResponse'_authorizerId = Lens.lens (\UpdateRouteResponse'' {authorizerId} -> authorizerId) (\s@UpdateRouteResponse'' {} a -> s {authorizerId = a} :: UpdateRouteResponse')

-- | The response's http status code.
updateRouteResponse'_httpStatus :: Lens.Lens' UpdateRouteResponse' Prelude.Int
updateRouteResponse'_httpStatus = Lens.lens (\UpdateRouteResponse'' {httpStatus} -> httpStatus) (\s@UpdateRouteResponse'' {} a -> s {httpStatus = a} :: UpdateRouteResponse')

instance Prelude.NFData UpdateRouteResponse' where
  rnf UpdateRouteResponse'' {..} =
    Prelude.rnf requestModels
      `Prelude.seq` Prelude.rnf requestParameters
      `Prelude.seq` Prelude.rnf apiKeyRequired
      `Prelude.seq` Prelude.rnf target
      `Prelude.seq` Prelude.rnf modelSelectionExpression
      `Prelude.seq` Prelude.rnf routeKey
      `Prelude.seq` Prelude.rnf routeId
      `Prelude.seq` Prelude.rnf authorizationScopes
      `Prelude.seq` Prelude.rnf authorizationType
      `Prelude.seq` Prelude.rnf operationName
      `Prelude.seq` Prelude.rnf apiGatewayManaged
      `Prelude.seq` Prelude.rnf routeResponseSelectionExpression
      `Prelude.seq` Prelude.rnf authorizerId
      `Prelude.seq` Prelude.rnf httpStatus
