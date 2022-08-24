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
-- Module      : Amazonka.SageMaker.Types.Alarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.Alarm where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An Amazon CloudWatch alarm configured to monitor metrics on an endpoint.
--
-- /See:/ 'newAlarm' smart constructor.
data Alarm = Alarm'
  { -- | The name of a CloudWatch alarm in your account.
    alarmName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Alarm' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarmName', 'alarm_alarmName' - The name of a CloudWatch alarm in your account.
newAlarm ::
  Alarm
newAlarm = Alarm' {alarmName = Prelude.Nothing}

-- | The name of a CloudWatch alarm in your account.
alarm_alarmName :: Lens.Lens' Alarm (Prelude.Maybe Prelude.Text)
alarm_alarmName = Lens.lens (\Alarm' {alarmName} -> alarmName) (\s@Alarm' {} a -> s {alarmName = a} :: Alarm)

instance Core.FromJSON Alarm where
  parseJSON =
    Core.withObject
      "Alarm"
      (\x -> Alarm' Prelude.<$> (x Core..:? "AlarmName"))

instance Prelude.Hashable Alarm where
  hashWithSalt _salt Alarm' {..} =
    _salt `Prelude.hashWithSalt` alarmName

instance Prelude.NFData Alarm where
  rnf Alarm' {..} = Prelude.rnf alarmName

instance Core.ToJSON Alarm where
  toJSON Alarm' {..} =
    Core.object
      ( Prelude.catMaybes
          [("AlarmName" Core..=) Prelude.<$> alarmName]
      )
