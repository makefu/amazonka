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
-- Module      : Network.AWS.LexV2Models.ListBotVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about all of the versions of a bot.
--
-- The @ListBotVersions@ operation returns a summary of each version of a
-- bot. For example, if a bot has three numbered versions, the
-- @ListBotVersions@ operation returns for summaries, one for each numbered
-- version and one for the @DRAFT@ version.
--
-- The @ListBotVersions@ operation always returns at least one version, the
-- @DRAFT@ version.
module Network.AWS.LexV2Models.ListBotVersions
  ( -- * Creating a Request
    ListBotVersions (..),
    newListBotVersions,

    -- * Request Lenses
    listBotVersions_nextToken,
    listBotVersions_maxResults,
    listBotVersions_sortBy,
    listBotVersions_botId,

    -- * Destructuring the Response
    ListBotVersionsResponse (..),
    newListBotVersionsResponse,

    -- * Response Lenses
    listBotVersionsResponse_botVersionSummaries,
    listBotVersionsResponse_nextToken,
    listBotVersionsResponse_botId,
    listBotVersionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LexV2Models.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListBotVersions' smart constructor.
data ListBotVersions = ListBotVersions'
  { -- | If the response to the @ListBotVersion@ operation contains more results
    -- than specified in the @maxResults@ parameter, a token is returned in the
    -- response. Use that token in the @nextToken@ parameter to return the next
    -- page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of versions to return in each page of results. If
    -- there are fewer results than the max page size, only the actual number
    -- of results are returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Specifies sorting parameters for the list of versions. You can specify
    -- that the list be sorted by version name in either ascending or
    -- descending order.
    sortBy :: Prelude.Maybe BotVersionSortBy,
    -- | The identifier of the bot to list versions for.
    botId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBotVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBotVersions_nextToken' - If the response to the @ListBotVersion@ operation contains more results
-- than specified in the @maxResults@ parameter, a token is returned in the
-- response. Use that token in the @nextToken@ parameter to return the next
-- page of results.
--
-- 'maxResults', 'listBotVersions_maxResults' - The maximum number of versions to return in each page of results. If
-- there are fewer results than the max page size, only the actual number
-- of results are returned.
--
-- 'sortBy', 'listBotVersions_sortBy' - Specifies sorting parameters for the list of versions. You can specify
-- that the list be sorted by version name in either ascending or
-- descending order.
--
-- 'botId', 'listBotVersions_botId' - The identifier of the bot to list versions for.
newListBotVersions ::
  -- | 'botId'
  Prelude.Text ->
  ListBotVersions
newListBotVersions pBotId_ =
  ListBotVersions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      botId = pBotId_
    }

-- | If the response to the @ListBotVersion@ operation contains more results
-- than specified in the @maxResults@ parameter, a token is returned in the
-- response. Use that token in the @nextToken@ parameter to return the next
-- page of results.
listBotVersions_nextToken :: Lens.Lens' ListBotVersions (Prelude.Maybe Prelude.Text)
listBotVersions_nextToken = Lens.lens (\ListBotVersions' {nextToken} -> nextToken) (\s@ListBotVersions' {} a -> s {nextToken = a} :: ListBotVersions)

-- | The maximum number of versions to return in each page of results. If
-- there are fewer results than the max page size, only the actual number
-- of results are returned.
listBotVersions_maxResults :: Lens.Lens' ListBotVersions (Prelude.Maybe Prelude.Natural)
listBotVersions_maxResults = Lens.lens (\ListBotVersions' {maxResults} -> maxResults) (\s@ListBotVersions' {} a -> s {maxResults = a} :: ListBotVersions)

-- | Specifies sorting parameters for the list of versions. You can specify
-- that the list be sorted by version name in either ascending or
-- descending order.
listBotVersions_sortBy :: Lens.Lens' ListBotVersions (Prelude.Maybe BotVersionSortBy)
listBotVersions_sortBy = Lens.lens (\ListBotVersions' {sortBy} -> sortBy) (\s@ListBotVersions' {} a -> s {sortBy = a} :: ListBotVersions)

-- | The identifier of the bot to list versions for.
listBotVersions_botId :: Lens.Lens' ListBotVersions Prelude.Text
listBotVersions_botId = Lens.lens (\ListBotVersions' {botId} -> botId) (\s@ListBotVersions' {} a -> s {botId = a} :: ListBotVersions)

instance Core.AWSRequest ListBotVersions where
  type
    AWSResponse ListBotVersions =
      ListBotVersionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBotVersionsResponse'
            Prelude.<$> ( x Core..?> "botVersionSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "botId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListBotVersions

instance Prelude.NFData ListBotVersions

instance Core.ToHeaders ListBotVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListBotVersions where
  toJSON ListBotVersions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("sortBy" Core..=) Prelude.<$> sortBy
          ]
      )

instance Core.ToPath ListBotVersions where
  toPath ListBotVersions' {..} =
    Prelude.mconcat
      ["/bots/", Core.toBS botId, "/botversions/"]

instance Core.ToQuery ListBotVersions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListBotVersionsResponse' smart constructor.
data ListBotVersionsResponse = ListBotVersionsResponse'
  { -- | Summary information for the bot versions that meet the filter criteria
    -- specified in the request. The length of the list is specified in the
    -- @maxResults@ parameter of the request. If there are more versions
    -- available, the @nextToken@ field contains a token to get the next page
    -- of results.
    botVersionSummaries :: Prelude.Maybe [BotVersionSummary],
    -- | A token that indicates whether there are more results to return in a
    -- response to the @ListBotVersions@ operation. If the @nextToken@ field is
    -- present, you send the contents as the @nextToken@ parameter of a
    -- @ListBotAliases@ operation request to get the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the bot to list versions for.
    botId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBotVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'botVersionSummaries', 'listBotVersionsResponse_botVersionSummaries' - Summary information for the bot versions that meet the filter criteria
-- specified in the request. The length of the list is specified in the
-- @maxResults@ parameter of the request. If there are more versions
-- available, the @nextToken@ field contains a token to get the next page
-- of results.
--
-- 'nextToken', 'listBotVersionsResponse_nextToken' - A token that indicates whether there are more results to return in a
-- response to the @ListBotVersions@ operation. If the @nextToken@ field is
-- present, you send the contents as the @nextToken@ parameter of a
-- @ListBotAliases@ operation request to get the next page of results.
--
-- 'botId', 'listBotVersionsResponse_botId' - The identifier of the bot to list versions for.
--
-- 'httpStatus', 'listBotVersionsResponse_httpStatus' - The response's http status code.
newListBotVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBotVersionsResponse
newListBotVersionsResponse pHttpStatus_ =
  ListBotVersionsResponse'
    { botVersionSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      botId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Summary information for the bot versions that meet the filter criteria
-- specified in the request. The length of the list is specified in the
-- @maxResults@ parameter of the request. If there are more versions
-- available, the @nextToken@ field contains a token to get the next page
-- of results.
listBotVersionsResponse_botVersionSummaries :: Lens.Lens' ListBotVersionsResponse (Prelude.Maybe [BotVersionSummary])
listBotVersionsResponse_botVersionSummaries = Lens.lens (\ListBotVersionsResponse' {botVersionSummaries} -> botVersionSummaries) (\s@ListBotVersionsResponse' {} a -> s {botVersionSummaries = a} :: ListBotVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token that indicates whether there are more results to return in a
-- response to the @ListBotVersions@ operation. If the @nextToken@ field is
-- present, you send the contents as the @nextToken@ parameter of a
-- @ListBotAliases@ operation request to get the next page of results.
listBotVersionsResponse_nextToken :: Lens.Lens' ListBotVersionsResponse (Prelude.Maybe Prelude.Text)
listBotVersionsResponse_nextToken = Lens.lens (\ListBotVersionsResponse' {nextToken} -> nextToken) (\s@ListBotVersionsResponse' {} a -> s {nextToken = a} :: ListBotVersionsResponse)

-- | The identifier of the bot to list versions for.
listBotVersionsResponse_botId :: Lens.Lens' ListBotVersionsResponse (Prelude.Maybe Prelude.Text)
listBotVersionsResponse_botId = Lens.lens (\ListBotVersionsResponse' {botId} -> botId) (\s@ListBotVersionsResponse' {} a -> s {botId = a} :: ListBotVersionsResponse)

-- | The response's http status code.
listBotVersionsResponse_httpStatus :: Lens.Lens' ListBotVersionsResponse Prelude.Int
listBotVersionsResponse_httpStatus = Lens.lens (\ListBotVersionsResponse' {httpStatus} -> httpStatus) (\s@ListBotVersionsResponse' {} a -> s {httpStatus = a} :: ListBotVersionsResponse)

instance Prelude.NFData ListBotVersionsResponse
