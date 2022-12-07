{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Batch.Types.RetryStrategy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types.RetryStrategy where

import Amazonka.Batch.Types.EvaluateOnExit
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The retry strategy that\'s associated with a job. For more information,
-- see
-- <https://docs.aws.amazon.com/batch/latest/userguide/job_retries.html Automated job retries>
-- in the /Batch User Guide/.
--
-- /See:/ 'newRetryStrategy' smart constructor.
data RetryStrategy = RetryStrategy'
  { -- | Array of up to 5 objects that specify the conditions where jobs are
    -- retried or failed. If this parameter is specified, then the @attempts@
    -- parameter must also be specified. If none of the listed conditions
    -- match, then the job is retried.
    evaluateOnExit :: Prelude.Maybe [EvaluateOnExit],
    -- | The number of times to move a job to the @RUNNABLE@ status. You can
    -- specify between 1 and 10 attempts. If the value of @attempts@ is greater
    -- than one, the job is retried on failure the same number of attempts as
    -- the value.
    attempts :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RetryStrategy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evaluateOnExit', 'retryStrategy_evaluateOnExit' - Array of up to 5 objects that specify the conditions where jobs are
-- retried or failed. If this parameter is specified, then the @attempts@
-- parameter must also be specified. If none of the listed conditions
-- match, then the job is retried.
--
-- 'attempts', 'retryStrategy_attempts' - The number of times to move a job to the @RUNNABLE@ status. You can
-- specify between 1 and 10 attempts. If the value of @attempts@ is greater
-- than one, the job is retried on failure the same number of attempts as
-- the value.
newRetryStrategy ::
  RetryStrategy
newRetryStrategy =
  RetryStrategy'
    { evaluateOnExit = Prelude.Nothing,
      attempts = Prelude.Nothing
    }

-- | Array of up to 5 objects that specify the conditions where jobs are
-- retried or failed. If this parameter is specified, then the @attempts@
-- parameter must also be specified. If none of the listed conditions
-- match, then the job is retried.
retryStrategy_evaluateOnExit :: Lens.Lens' RetryStrategy (Prelude.Maybe [EvaluateOnExit])
retryStrategy_evaluateOnExit = Lens.lens (\RetryStrategy' {evaluateOnExit} -> evaluateOnExit) (\s@RetryStrategy' {} a -> s {evaluateOnExit = a} :: RetryStrategy) Prelude.. Lens.mapping Lens.coerced

-- | The number of times to move a job to the @RUNNABLE@ status. You can
-- specify between 1 and 10 attempts. If the value of @attempts@ is greater
-- than one, the job is retried on failure the same number of attempts as
-- the value.
retryStrategy_attempts :: Lens.Lens' RetryStrategy (Prelude.Maybe Prelude.Int)
retryStrategy_attempts = Lens.lens (\RetryStrategy' {attempts} -> attempts) (\s@RetryStrategy' {} a -> s {attempts = a} :: RetryStrategy)

instance Data.FromJSON RetryStrategy where
  parseJSON =
    Data.withObject
      "RetryStrategy"
      ( \x ->
          RetryStrategy'
            Prelude.<$> (x Data..:? "evaluateOnExit" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "attempts")
      )

instance Prelude.Hashable RetryStrategy where
  hashWithSalt _salt RetryStrategy' {..} =
    _salt `Prelude.hashWithSalt` evaluateOnExit
      `Prelude.hashWithSalt` attempts

instance Prelude.NFData RetryStrategy where
  rnf RetryStrategy' {..} =
    Prelude.rnf evaluateOnExit
      `Prelude.seq` Prelude.rnf attempts

instance Data.ToJSON RetryStrategy where
  toJSON RetryStrategy' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("evaluateOnExit" Data..=)
              Prelude.<$> evaluateOnExit,
            ("attempts" Data..=) Prelude.<$> attempts
          ]
      )
