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
-- Module      : Amazonka.CognitoIdentityProvider.RevokeToken
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes all of the access tokens generated by, and at the same time as,
-- the specified refresh token. After a token is revoked, you can\'t use
-- the revoked token to access Amazon Cognito user APIs, or to authorize
-- access to your resource server.
module Amazonka.CognitoIdentityProvider.RevokeToken
  ( -- * Creating a Request
    RevokeToken (..),
    newRevokeToken,

    -- * Request Lenses
    revokeToken_clientSecret,
    revokeToken_token,
    revokeToken_clientId,

    -- * Destructuring the Response
    RevokeTokenResponse (..),
    newRevokeTokenResponse,

    -- * Response Lenses
    revokeTokenResponse_httpStatus,
  )
where

import Amazonka.CognitoIdentityProvider.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRevokeToken' smart constructor.
data RevokeToken = RevokeToken'
  { -- | The secret for the client ID. This is required only if the client ID has
    -- a secret.
    clientSecret :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The refresh token that you want to revoke.
    token :: Data.Sensitive Prelude.Text,
    -- | The client ID for the token that you want to revoke.
    clientId :: Data.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientSecret', 'revokeToken_clientSecret' - The secret for the client ID. This is required only if the client ID has
-- a secret.
--
-- 'token', 'revokeToken_token' - The refresh token that you want to revoke.
--
-- 'clientId', 'revokeToken_clientId' - The client ID for the token that you want to revoke.
newRevokeToken ::
  -- | 'token'
  Prelude.Text ->
  -- | 'clientId'
  Prelude.Text ->
  RevokeToken
newRevokeToken pToken_ pClientId_ =
  RevokeToken'
    { clientSecret = Prelude.Nothing,
      token = Data._Sensitive Lens.# pToken_,
      clientId = Data._Sensitive Lens.# pClientId_
    }

-- | The secret for the client ID. This is required only if the client ID has
-- a secret.
revokeToken_clientSecret :: Lens.Lens' RevokeToken (Prelude.Maybe Prelude.Text)
revokeToken_clientSecret = Lens.lens (\RevokeToken' {clientSecret} -> clientSecret) (\s@RevokeToken' {} a -> s {clientSecret = a} :: RevokeToken) Prelude.. Lens.mapping Data._Sensitive

-- | The refresh token that you want to revoke.
revokeToken_token :: Lens.Lens' RevokeToken Prelude.Text
revokeToken_token = Lens.lens (\RevokeToken' {token} -> token) (\s@RevokeToken' {} a -> s {token = a} :: RevokeToken) Prelude.. Data._Sensitive

-- | The client ID for the token that you want to revoke.
revokeToken_clientId :: Lens.Lens' RevokeToken Prelude.Text
revokeToken_clientId = Lens.lens (\RevokeToken' {clientId} -> clientId) (\s@RevokeToken' {} a -> s {clientId = a} :: RevokeToken) Prelude.. Data._Sensitive

instance Core.AWSRequest RevokeToken where
  type AWSResponse RevokeToken = RevokeTokenResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          RevokeTokenResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RevokeToken where
  hashWithSalt _salt RevokeToken' {..} =
    _salt
      `Prelude.hashWithSalt` clientSecret
      `Prelude.hashWithSalt` token
      `Prelude.hashWithSalt` clientId

instance Prelude.NFData RevokeToken where
  rnf RevokeToken' {..} =
    Prelude.rnf clientSecret
      `Prelude.seq` Prelude.rnf token
      `Prelude.seq` Prelude.rnf clientId

instance Data.ToHeaders RevokeToken where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSCognitoIdentityProviderService.RevokeToken" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON RevokeToken where
  toJSON RevokeToken' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("ClientSecret" Data..=) Prelude.<$> clientSecret,
            Prelude.Just ("Token" Data..= token),
            Prelude.Just ("ClientId" Data..= clientId)
          ]
      )

instance Data.ToPath RevokeToken where
  toPath = Prelude.const "/"

instance Data.ToQuery RevokeToken where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRevokeTokenResponse' smart constructor.
data RevokeTokenResponse = RevokeTokenResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'revokeTokenResponse_httpStatus' - The response's http status code.
newRevokeTokenResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RevokeTokenResponse
newRevokeTokenResponse pHttpStatus_ =
  RevokeTokenResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
revokeTokenResponse_httpStatus :: Lens.Lens' RevokeTokenResponse Prelude.Int
revokeTokenResponse_httpStatus = Lens.lens (\RevokeTokenResponse' {httpStatus} -> httpStatus) (\s@RevokeTokenResponse' {} a -> s {httpStatus = a} :: RevokeTokenResponse)

instance Prelude.NFData RevokeTokenResponse where
  rnf RevokeTokenResponse' {..} = Prelude.rnf httpStatus
