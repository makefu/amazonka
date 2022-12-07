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
-- Module      : Amazonka.ServiceCatalog.UpdateProduct
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified product.
module Amazonka.ServiceCatalog.UpdateProduct
  ( -- * Creating a Request
    UpdateProduct (..),
    newUpdateProduct,

    -- * Request Lenses
    updateProduct_addTags,
    updateProduct_removeTags,
    updateProduct_supportDescription,
    updateProduct_name,
    updateProduct_supportEmail,
    updateProduct_supportUrl,
    updateProduct_owner,
    updateProduct_description,
    updateProduct_distributor,
    updateProduct_sourceConnection,
    updateProduct_acceptLanguage,
    updateProduct_id,

    -- * Destructuring the Response
    UpdateProductResponse (..),
    newUpdateProductResponse,

    -- * Response Lenses
    updateProductResponse_tags,
    updateProductResponse_productViewDetail,
    updateProductResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalog.Types

-- | /See:/ 'newUpdateProduct' smart constructor.
data UpdateProduct = UpdateProduct'
  { -- | The tags to add to the product.
    addTags :: Prelude.Maybe [Tag],
    -- | The tags to remove from the product.
    removeTags :: Prelude.Maybe [Prelude.Text],
    -- | The updated support description for the product.
    supportDescription :: Prelude.Maybe Prelude.Text,
    -- | The updated product name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The updated support email for the product.
    supportEmail :: Prelude.Maybe Prelude.Text,
    -- | The updated support URL for the product.
    supportUrl :: Prelude.Maybe Prelude.Text,
    -- | The updated owner of the product.
    owner :: Prelude.Maybe Prelude.Text,
    -- | The updated description of the product.
    description :: Prelude.Maybe Prelude.Text,
    -- | The updated distributor of the product.
    distributor :: Prelude.Maybe Prelude.Text,
    -- | Specifies connection details for the updated product and syncs the
    -- product to the connection source artifact. This automatically manages
    -- the product\'s artifacts based on changes to the source. The
    -- @SourceConnection@ parameter consists of the following sub-fields.
    --
    -- -   @Type@
    --
    -- -   @ConnectionParamters@
    sourceConnection :: Prelude.Maybe SourceConnection,
    -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The product identifier.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateProduct' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'addTags', 'updateProduct_addTags' - The tags to add to the product.
--
-- 'removeTags', 'updateProduct_removeTags' - The tags to remove from the product.
--
-- 'supportDescription', 'updateProduct_supportDescription' - The updated support description for the product.
--
-- 'name', 'updateProduct_name' - The updated product name.
--
-- 'supportEmail', 'updateProduct_supportEmail' - The updated support email for the product.
--
-- 'supportUrl', 'updateProduct_supportUrl' - The updated support URL for the product.
--
-- 'owner', 'updateProduct_owner' - The updated owner of the product.
--
-- 'description', 'updateProduct_description' - The updated description of the product.
--
-- 'distributor', 'updateProduct_distributor' - The updated distributor of the product.
--
-- 'sourceConnection', 'updateProduct_sourceConnection' - Specifies connection details for the updated product and syncs the
-- product to the connection source artifact. This automatically manages
-- the product\'s artifacts based on changes to the source. The
-- @SourceConnection@ parameter consists of the following sub-fields.
--
-- -   @Type@
--
-- -   @ConnectionParamters@
--
-- 'acceptLanguage', 'updateProduct_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'id', 'updateProduct_id' - The product identifier.
newUpdateProduct ::
  -- | 'id'
  Prelude.Text ->
  UpdateProduct
newUpdateProduct pId_ =
  UpdateProduct'
    { addTags = Prelude.Nothing,
      removeTags = Prelude.Nothing,
      supportDescription = Prelude.Nothing,
      name = Prelude.Nothing,
      supportEmail = Prelude.Nothing,
      supportUrl = Prelude.Nothing,
      owner = Prelude.Nothing,
      description = Prelude.Nothing,
      distributor = Prelude.Nothing,
      sourceConnection = Prelude.Nothing,
      acceptLanguage = Prelude.Nothing,
      id = pId_
    }

-- | The tags to add to the product.
updateProduct_addTags :: Lens.Lens' UpdateProduct (Prelude.Maybe [Tag])
updateProduct_addTags = Lens.lens (\UpdateProduct' {addTags} -> addTags) (\s@UpdateProduct' {} a -> s {addTags = a} :: UpdateProduct) Prelude.. Lens.mapping Lens.coerced

-- | The tags to remove from the product.
updateProduct_removeTags :: Lens.Lens' UpdateProduct (Prelude.Maybe [Prelude.Text])
updateProduct_removeTags = Lens.lens (\UpdateProduct' {removeTags} -> removeTags) (\s@UpdateProduct' {} a -> s {removeTags = a} :: UpdateProduct) Prelude.. Lens.mapping Lens.coerced

-- | The updated support description for the product.
updateProduct_supportDescription :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_supportDescription = Lens.lens (\UpdateProduct' {supportDescription} -> supportDescription) (\s@UpdateProduct' {} a -> s {supportDescription = a} :: UpdateProduct)

-- | The updated product name.
updateProduct_name :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_name = Lens.lens (\UpdateProduct' {name} -> name) (\s@UpdateProduct' {} a -> s {name = a} :: UpdateProduct)

-- | The updated support email for the product.
updateProduct_supportEmail :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_supportEmail = Lens.lens (\UpdateProduct' {supportEmail} -> supportEmail) (\s@UpdateProduct' {} a -> s {supportEmail = a} :: UpdateProduct)

-- | The updated support URL for the product.
updateProduct_supportUrl :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_supportUrl = Lens.lens (\UpdateProduct' {supportUrl} -> supportUrl) (\s@UpdateProduct' {} a -> s {supportUrl = a} :: UpdateProduct)

-- | The updated owner of the product.
updateProduct_owner :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_owner = Lens.lens (\UpdateProduct' {owner} -> owner) (\s@UpdateProduct' {} a -> s {owner = a} :: UpdateProduct)

-- | The updated description of the product.
updateProduct_description :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_description = Lens.lens (\UpdateProduct' {description} -> description) (\s@UpdateProduct' {} a -> s {description = a} :: UpdateProduct)

-- | The updated distributor of the product.
updateProduct_distributor :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_distributor = Lens.lens (\UpdateProduct' {distributor} -> distributor) (\s@UpdateProduct' {} a -> s {distributor = a} :: UpdateProduct)

-- | Specifies connection details for the updated product and syncs the
-- product to the connection source artifact. This automatically manages
-- the product\'s artifacts based on changes to the source. The
-- @SourceConnection@ parameter consists of the following sub-fields.
--
-- -   @Type@
--
-- -   @ConnectionParamters@
updateProduct_sourceConnection :: Lens.Lens' UpdateProduct (Prelude.Maybe SourceConnection)
updateProduct_sourceConnection = Lens.lens (\UpdateProduct' {sourceConnection} -> sourceConnection) (\s@UpdateProduct' {} a -> s {sourceConnection = a} :: UpdateProduct)

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
updateProduct_acceptLanguage :: Lens.Lens' UpdateProduct (Prelude.Maybe Prelude.Text)
updateProduct_acceptLanguage = Lens.lens (\UpdateProduct' {acceptLanguage} -> acceptLanguage) (\s@UpdateProduct' {} a -> s {acceptLanguage = a} :: UpdateProduct)

-- | The product identifier.
updateProduct_id :: Lens.Lens' UpdateProduct Prelude.Text
updateProduct_id = Lens.lens (\UpdateProduct' {id} -> id) (\s@UpdateProduct' {} a -> s {id = a} :: UpdateProduct)

instance Core.AWSRequest UpdateProduct where
  type
    AWSResponse UpdateProduct =
      UpdateProductResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateProductResponse'
            Prelude.<$> (x Data..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Data..?> "ProductViewDetail")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateProduct where
  hashWithSalt _salt UpdateProduct' {..} =
    _salt `Prelude.hashWithSalt` addTags
      `Prelude.hashWithSalt` removeTags
      `Prelude.hashWithSalt` supportDescription
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` supportEmail
      `Prelude.hashWithSalt` supportUrl
      `Prelude.hashWithSalt` owner
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` distributor
      `Prelude.hashWithSalt` sourceConnection
      `Prelude.hashWithSalt` acceptLanguage
      `Prelude.hashWithSalt` id

instance Prelude.NFData UpdateProduct where
  rnf UpdateProduct' {..} =
    Prelude.rnf addTags
      `Prelude.seq` Prelude.rnf removeTags
      `Prelude.seq` Prelude.rnf supportDescription
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf supportEmail
      `Prelude.seq` Prelude.rnf supportUrl
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf distributor
      `Prelude.seq` Prelude.rnf sourceConnection
      `Prelude.seq` Prelude.rnf acceptLanguage
      `Prelude.seq` Prelude.rnf id

instance Data.ToHeaders UpdateProduct where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWS242ServiceCatalogService.UpdateProduct" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON UpdateProduct where
  toJSON UpdateProduct' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("AddTags" Data..=) Prelude.<$> addTags,
            ("RemoveTags" Data..=) Prelude.<$> removeTags,
            ("SupportDescription" Data..=)
              Prelude.<$> supportDescription,
            ("Name" Data..=) Prelude.<$> name,
            ("SupportEmail" Data..=) Prelude.<$> supportEmail,
            ("SupportUrl" Data..=) Prelude.<$> supportUrl,
            ("Owner" Data..=) Prelude.<$> owner,
            ("Description" Data..=) Prelude.<$> description,
            ("Distributor" Data..=) Prelude.<$> distributor,
            ("SourceConnection" Data..=)
              Prelude.<$> sourceConnection,
            ("AcceptLanguage" Data..=)
              Prelude.<$> acceptLanguage,
            Prelude.Just ("Id" Data..= id)
          ]
      )

instance Data.ToPath UpdateProduct where
  toPath = Prelude.const "/"

instance Data.ToQuery UpdateProduct where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateProductResponse' smart constructor.
data UpdateProductResponse = UpdateProductResponse'
  { -- | Information about the tags associated with the product.
    tags :: Prelude.Maybe [Tag],
    -- | Information about the product view.
    productViewDetail :: Prelude.Maybe ProductViewDetail,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateProductResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updateProductResponse_tags' - Information about the tags associated with the product.
--
-- 'productViewDetail', 'updateProductResponse_productViewDetail' - Information about the product view.
--
-- 'httpStatus', 'updateProductResponse_httpStatus' - The response's http status code.
newUpdateProductResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateProductResponse
newUpdateProductResponse pHttpStatus_ =
  UpdateProductResponse'
    { tags = Prelude.Nothing,
      productViewDetail = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the tags associated with the product.
updateProductResponse_tags :: Lens.Lens' UpdateProductResponse (Prelude.Maybe [Tag])
updateProductResponse_tags = Lens.lens (\UpdateProductResponse' {tags} -> tags) (\s@UpdateProductResponse' {} a -> s {tags = a} :: UpdateProductResponse) Prelude.. Lens.mapping Lens.coerced

-- | Information about the product view.
updateProductResponse_productViewDetail :: Lens.Lens' UpdateProductResponse (Prelude.Maybe ProductViewDetail)
updateProductResponse_productViewDetail = Lens.lens (\UpdateProductResponse' {productViewDetail} -> productViewDetail) (\s@UpdateProductResponse' {} a -> s {productViewDetail = a} :: UpdateProductResponse)

-- | The response's http status code.
updateProductResponse_httpStatus :: Lens.Lens' UpdateProductResponse Prelude.Int
updateProductResponse_httpStatus = Lens.lens (\UpdateProductResponse' {httpStatus} -> httpStatus) (\s@UpdateProductResponse' {} a -> s {httpStatus = a} :: UpdateProductResponse)

instance Prelude.NFData UpdateProductResponse where
  rnf UpdateProductResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf productViewDetail
      `Prelude.seq` Prelude.rnf httpStatus
