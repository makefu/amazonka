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
-- Module      : Amazonka.OpenSearch.Types.AutoTuneMaintenanceSchedule
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.AutoTuneMaintenanceSchedule where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.OpenSearch.Types.Duration
import qualified Amazonka.Prelude as Prelude

-- | The Auto-Tune maintenance schedule. For more information, see
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>.
--
-- /See:/ 'newAutoTuneMaintenanceSchedule' smart constructor.
data AutoTuneMaintenanceSchedule = AutoTuneMaintenanceSchedule'
  { -- | The duration of the maintenance schedule. For example,
    -- @\"Duration\": {\"Value\": 2, \"Unit\": \"HOURS\"}@.
    duration :: Prelude.Maybe Duration,
    -- | A cron expression for a recurring maintenance schedule during which
    -- Auto-Tune can deploy changes.
    cronExpressionForRecurrence :: Prelude.Maybe Prelude.Text,
    -- | The Epoch timestamp at which the Auto-Tune maintenance schedule starts.
    startAt :: Prelude.Maybe Data.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoTuneMaintenanceSchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'duration', 'autoTuneMaintenanceSchedule_duration' - The duration of the maintenance schedule. For example,
-- @\"Duration\": {\"Value\": 2, \"Unit\": \"HOURS\"}@.
--
-- 'cronExpressionForRecurrence', 'autoTuneMaintenanceSchedule_cronExpressionForRecurrence' - A cron expression for a recurring maintenance schedule during which
-- Auto-Tune can deploy changes.
--
-- 'startAt', 'autoTuneMaintenanceSchedule_startAt' - The Epoch timestamp at which the Auto-Tune maintenance schedule starts.
newAutoTuneMaintenanceSchedule ::
  AutoTuneMaintenanceSchedule
newAutoTuneMaintenanceSchedule =
  AutoTuneMaintenanceSchedule'
    { duration =
        Prelude.Nothing,
      cronExpressionForRecurrence = Prelude.Nothing,
      startAt = Prelude.Nothing
    }

-- | The duration of the maintenance schedule. For example,
-- @\"Duration\": {\"Value\": 2, \"Unit\": \"HOURS\"}@.
autoTuneMaintenanceSchedule_duration :: Lens.Lens' AutoTuneMaintenanceSchedule (Prelude.Maybe Duration)
autoTuneMaintenanceSchedule_duration = Lens.lens (\AutoTuneMaintenanceSchedule' {duration} -> duration) (\s@AutoTuneMaintenanceSchedule' {} a -> s {duration = a} :: AutoTuneMaintenanceSchedule)

-- | A cron expression for a recurring maintenance schedule during which
-- Auto-Tune can deploy changes.
autoTuneMaintenanceSchedule_cronExpressionForRecurrence :: Lens.Lens' AutoTuneMaintenanceSchedule (Prelude.Maybe Prelude.Text)
autoTuneMaintenanceSchedule_cronExpressionForRecurrence = Lens.lens (\AutoTuneMaintenanceSchedule' {cronExpressionForRecurrence} -> cronExpressionForRecurrence) (\s@AutoTuneMaintenanceSchedule' {} a -> s {cronExpressionForRecurrence = a} :: AutoTuneMaintenanceSchedule)

-- | The Epoch timestamp at which the Auto-Tune maintenance schedule starts.
autoTuneMaintenanceSchedule_startAt :: Lens.Lens' AutoTuneMaintenanceSchedule (Prelude.Maybe Prelude.UTCTime)
autoTuneMaintenanceSchedule_startAt = Lens.lens (\AutoTuneMaintenanceSchedule' {startAt} -> startAt) (\s@AutoTuneMaintenanceSchedule' {} a -> s {startAt = a} :: AutoTuneMaintenanceSchedule) Prelude.. Lens.mapping Data._Time

instance Data.FromJSON AutoTuneMaintenanceSchedule where
  parseJSON =
    Data.withObject
      "AutoTuneMaintenanceSchedule"
      ( \x ->
          AutoTuneMaintenanceSchedule'
            Prelude.<$> (x Data..:? "Duration")
            Prelude.<*> (x Data..:? "CronExpressionForRecurrence")
            Prelude.<*> (x Data..:? "StartAt")
      )

instance Prelude.Hashable AutoTuneMaintenanceSchedule where
  hashWithSalt _salt AutoTuneMaintenanceSchedule' {..} =
    _salt `Prelude.hashWithSalt` duration
      `Prelude.hashWithSalt` cronExpressionForRecurrence
      `Prelude.hashWithSalt` startAt

instance Prelude.NFData AutoTuneMaintenanceSchedule where
  rnf AutoTuneMaintenanceSchedule' {..} =
    Prelude.rnf duration
      `Prelude.seq` Prelude.rnf cronExpressionForRecurrence
      `Prelude.seq` Prelude.rnf startAt

instance Data.ToJSON AutoTuneMaintenanceSchedule where
  toJSON AutoTuneMaintenanceSchedule' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("Duration" Data..=) Prelude.<$> duration,
            ("CronExpressionForRecurrence" Data..=)
              Prelude.<$> cronExpressionForRecurrence,
            ("StartAt" Data..=) Prelude.<$> startAt
          ]
      )
