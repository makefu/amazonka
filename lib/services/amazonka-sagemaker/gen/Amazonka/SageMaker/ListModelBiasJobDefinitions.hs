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
-- Module      : Amazonka.SageMaker.ListModelBiasJobDefinitions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists model bias jobs definitions that satisfy various filters.
--
-- This operation returns paginated results.
module Amazonka.SageMaker.ListModelBiasJobDefinitions
  ( -- * Creating a Request
    ListModelBiasJobDefinitions (..),
    newListModelBiasJobDefinitions,

    -- * Request Lenses
    listModelBiasJobDefinitions_sortOrder,
    listModelBiasJobDefinitions_nextToken,
    listModelBiasJobDefinitions_endpointName,
    listModelBiasJobDefinitions_nameContains,
    listModelBiasJobDefinitions_creationTimeBefore,
    listModelBiasJobDefinitions_sortBy,
    listModelBiasJobDefinitions_maxResults,
    listModelBiasJobDefinitions_creationTimeAfter,

    -- * Destructuring the Response
    ListModelBiasJobDefinitionsResponse (..),
    newListModelBiasJobDefinitionsResponse,

    -- * Response Lenses
    listModelBiasJobDefinitionsResponse_nextToken,
    listModelBiasJobDefinitionsResponse_httpStatus,
    listModelBiasJobDefinitionsResponse_jobDefinitionSummaries,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newListModelBiasJobDefinitions' smart constructor.
data ListModelBiasJobDefinitions = ListModelBiasJobDefinitions'
  { -- | Whether to sort the results in @Ascending@ or @Descending@ order. The
    -- default is @Descending@.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | The token returned if the response is truncated. To retrieve the next
    -- set of job executions, use it in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Name of the endpoint to monitor for model bias.
    endpointName :: Prelude.Maybe Prelude.Text,
    -- | Filter for model bias jobs whose name contains a specified string.
    nameContains :: Prelude.Maybe Prelude.Text,
    -- | A filter that returns only model bias jobs created before a specified
    -- time.
    creationTimeBefore :: Prelude.Maybe Data.POSIX,
    -- | Whether to sort results by the @Name@ or @CreationTime@ field. The
    -- default is @CreationTime@.
    sortBy :: Prelude.Maybe MonitoringJobDefinitionSortKey,
    -- | The maximum number of model bias jobs to return in the response. The
    -- default value is 10.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A filter that returns only model bias jobs created after a specified
    -- time.
    creationTimeAfter :: Prelude.Maybe Data.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListModelBiasJobDefinitions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listModelBiasJobDefinitions_sortOrder' - Whether to sort the results in @Ascending@ or @Descending@ order. The
-- default is @Descending@.
--
-- 'nextToken', 'listModelBiasJobDefinitions_nextToken' - The token returned if the response is truncated. To retrieve the next
-- set of job executions, use it in the next request.
--
-- 'endpointName', 'listModelBiasJobDefinitions_endpointName' - Name of the endpoint to monitor for model bias.
--
-- 'nameContains', 'listModelBiasJobDefinitions_nameContains' - Filter for model bias jobs whose name contains a specified string.
--
-- 'creationTimeBefore', 'listModelBiasJobDefinitions_creationTimeBefore' - A filter that returns only model bias jobs created before a specified
-- time.
--
-- 'sortBy', 'listModelBiasJobDefinitions_sortBy' - Whether to sort results by the @Name@ or @CreationTime@ field. The
-- default is @CreationTime@.
--
-- 'maxResults', 'listModelBiasJobDefinitions_maxResults' - The maximum number of model bias jobs to return in the response. The
-- default value is 10.
--
-- 'creationTimeAfter', 'listModelBiasJobDefinitions_creationTimeAfter' - A filter that returns only model bias jobs created after a specified
-- time.
newListModelBiasJobDefinitions ::
  ListModelBiasJobDefinitions
newListModelBiasJobDefinitions =
  ListModelBiasJobDefinitions'
    { sortOrder =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      endpointName = Prelude.Nothing,
      nameContains = Prelude.Nothing,
      creationTimeBefore = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      creationTimeAfter = Prelude.Nothing
    }

-- | Whether to sort the results in @Ascending@ or @Descending@ order. The
-- default is @Descending@.
listModelBiasJobDefinitions_sortOrder :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe SortOrder)
listModelBiasJobDefinitions_sortOrder = Lens.lens (\ListModelBiasJobDefinitions' {sortOrder} -> sortOrder) (\s@ListModelBiasJobDefinitions' {} a -> s {sortOrder = a} :: ListModelBiasJobDefinitions)

-- | The token returned if the response is truncated. To retrieve the next
-- set of job executions, use it in the next request.
listModelBiasJobDefinitions_nextToken :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe Prelude.Text)
listModelBiasJobDefinitions_nextToken = Lens.lens (\ListModelBiasJobDefinitions' {nextToken} -> nextToken) (\s@ListModelBiasJobDefinitions' {} a -> s {nextToken = a} :: ListModelBiasJobDefinitions)

-- | Name of the endpoint to monitor for model bias.
listModelBiasJobDefinitions_endpointName :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe Prelude.Text)
listModelBiasJobDefinitions_endpointName = Lens.lens (\ListModelBiasJobDefinitions' {endpointName} -> endpointName) (\s@ListModelBiasJobDefinitions' {} a -> s {endpointName = a} :: ListModelBiasJobDefinitions)

-- | Filter for model bias jobs whose name contains a specified string.
listModelBiasJobDefinitions_nameContains :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe Prelude.Text)
listModelBiasJobDefinitions_nameContains = Lens.lens (\ListModelBiasJobDefinitions' {nameContains} -> nameContains) (\s@ListModelBiasJobDefinitions' {} a -> s {nameContains = a} :: ListModelBiasJobDefinitions)

-- | A filter that returns only model bias jobs created before a specified
-- time.
listModelBiasJobDefinitions_creationTimeBefore :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe Prelude.UTCTime)
listModelBiasJobDefinitions_creationTimeBefore = Lens.lens (\ListModelBiasJobDefinitions' {creationTimeBefore} -> creationTimeBefore) (\s@ListModelBiasJobDefinitions' {} a -> s {creationTimeBefore = a} :: ListModelBiasJobDefinitions) Prelude.. Lens.mapping Data._Time

-- | Whether to sort results by the @Name@ or @CreationTime@ field. The
-- default is @CreationTime@.
listModelBiasJobDefinitions_sortBy :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe MonitoringJobDefinitionSortKey)
listModelBiasJobDefinitions_sortBy = Lens.lens (\ListModelBiasJobDefinitions' {sortBy} -> sortBy) (\s@ListModelBiasJobDefinitions' {} a -> s {sortBy = a} :: ListModelBiasJobDefinitions)

-- | The maximum number of model bias jobs to return in the response. The
-- default value is 10.
listModelBiasJobDefinitions_maxResults :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe Prelude.Natural)
listModelBiasJobDefinitions_maxResults = Lens.lens (\ListModelBiasJobDefinitions' {maxResults} -> maxResults) (\s@ListModelBiasJobDefinitions' {} a -> s {maxResults = a} :: ListModelBiasJobDefinitions)

-- | A filter that returns only model bias jobs created after a specified
-- time.
listModelBiasJobDefinitions_creationTimeAfter :: Lens.Lens' ListModelBiasJobDefinitions (Prelude.Maybe Prelude.UTCTime)
listModelBiasJobDefinitions_creationTimeAfter = Lens.lens (\ListModelBiasJobDefinitions' {creationTimeAfter} -> creationTimeAfter) (\s@ListModelBiasJobDefinitions' {} a -> s {creationTimeAfter = a} :: ListModelBiasJobDefinitions) Prelude.. Lens.mapping Data._Time

instance Core.AWSPager ListModelBiasJobDefinitions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listModelBiasJobDefinitionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listModelBiasJobDefinitionsResponse_jobDefinitionSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listModelBiasJobDefinitions_nextToken
          Lens..~ rs
          Lens.^? listModelBiasJobDefinitionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListModelBiasJobDefinitions where
  type
    AWSResponse ListModelBiasJobDefinitions =
      ListModelBiasJobDefinitionsResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListModelBiasJobDefinitionsResponse'
            Prelude.<$> (x Data..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Data..?> "JobDefinitionSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListModelBiasJobDefinitions where
  hashWithSalt _salt ListModelBiasJobDefinitions' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` endpointName
      `Prelude.hashWithSalt` nameContains
      `Prelude.hashWithSalt` creationTimeBefore
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` creationTimeAfter

instance Prelude.NFData ListModelBiasJobDefinitions where
  rnf ListModelBiasJobDefinitions' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf endpointName
      `Prelude.seq` Prelude.rnf nameContains
      `Prelude.seq` Prelude.rnf creationTimeBefore
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf creationTimeAfter

instance Data.ToHeaders ListModelBiasJobDefinitions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "SageMaker.ListModelBiasJobDefinitions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON ListModelBiasJobDefinitions where
  toJSON ListModelBiasJobDefinitions' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("SortOrder" Data..=) Prelude.<$> sortOrder,
            ("NextToken" Data..=) Prelude.<$> nextToken,
            ("EndpointName" Data..=) Prelude.<$> endpointName,
            ("NameContains" Data..=) Prelude.<$> nameContains,
            ("CreationTimeBefore" Data..=)
              Prelude.<$> creationTimeBefore,
            ("SortBy" Data..=) Prelude.<$> sortBy,
            ("MaxResults" Data..=) Prelude.<$> maxResults,
            ("CreationTimeAfter" Data..=)
              Prelude.<$> creationTimeAfter
          ]
      )

instance Data.ToPath ListModelBiasJobDefinitions where
  toPath = Prelude.const "/"

instance Data.ToQuery ListModelBiasJobDefinitions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListModelBiasJobDefinitionsResponse' smart constructor.
data ListModelBiasJobDefinitionsResponse = ListModelBiasJobDefinitionsResponse'
  { -- | If the response is truncated, Amazon SageMaker returns this token. To
    -- retrieve the next set of jobs, use it in the subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A JSON array in which each element is a summary for a model bias jobs.
    jobDefinitionSummaries :: [MonitoringJobDefinitionSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListModelBiasJobDefinitionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listModelBiasJobDefinitionsResponse_nextToken' - If the response is truncated, Amazon SageMaker returns this token. To
-- retrieve the next set of jobs, use it in the subsequent request.
--
-- 'httpStatus', 'listModelBiasJobDefinitionsResponse_httpStatus' - The response's http status code.
--
-- 'jobDefinitionSummaries', 'listModelBiasJobDefinitionsResponse_jobDefinitionSummaries' - A JSON array in which each element is a summary for a model bias jobs.
newListModelBiasJobDefinitionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListModelBiasJobDefinitionsResponse
newListModelBiasJobDefinitionsResponse pHttpStatus_ =
  ListModelBiasJobDefinitionsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      jobDefinitionSummaries =
        Prelude.mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To
-- retrieve the next set of jobs, use it in the subsequent request.
listModelBiasJobDefinitionsResponse_nextToken :: Lens.Lens' ListModelBiasJobDefinitionsResponse (Prelude.Maybe Prelude.Text)
listModelBiasJobDefinitionsResponse_nextToken = Lens.lens (\ListModelBiasJobDefinitionsResponse' {nextToken} -> nextToken) (\s@ListModelBiasJobDefinitionsResponse' {} a -> s {nextToken = a} :: ListModelBiasJobDefinitionsResponse)

-- | The response's http status code.
listModelBiasJobDefinitionsResponse_httpStatus :: Lens.Lens' ListModelBiasJobDefinitionsResponse Prelude.Int
listModelBiasJobDefinitionsResponse_httpStatus = Lens.lens (\ListModelBiasJobDefinitionsResponse' {httpStatus} -> httpStatus) (\s@ListModelBiasJobDefinitionsResponse' {} a -> s {httpStatus = a} :: ListModelBiasJobDefinitionsResponse)

-- | A JSON array in which each element is a summary for a model bias jobs.
listModelBiasJobDefinitionsResponse_jobDefinitionSummaries :: Lens.Lens' ListModelBiasJobDefinitionsResponse [MonitoringJobDefinitionSummary]
listModelBiasJobDefinitionsResponse_jobDefinitionSummaries = Lens.lens (\ListModelBiasJobDefinitionsResponse' {jobDefinitionSummaries} -> jobDefinitionSummaries) (\s@ListModelBiasJobDefinitionsResponse' {} a -> s {jobDefinitionSummaries = a} :: ListModelBiasJobDefinitionsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListModelBiasJobDefinitionsResponse
  where
  rnf ListModelBiasJobDefinitionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf jobDefinitionSummaries
