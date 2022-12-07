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
-- Module      : Amazonka.Glacier.Types.VaultNotificationConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glacier.Types.VaultNotificationConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Represents a vault\'s notification configuration.
--
-- /See:/ 'newVaultNotificationConfig' smart constructor.
data VaultNotificationConfig = VaultNotificationConfig'
  { -- | The Amazon Simple Notification Service (Amazon SNS) topic Amazon
    -- Resource Name (ARN).
    sNSTopic :: Prelude.Maybe Prelude.Text,
    -- | A list of one or more events for which Amazon S3 Glacier will send a
    -- notification to the specified Amazon SNS topic.
    events :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VaultNotificationConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sNSTopic', 'vaultNotificationConfig_sNSTopic' - The Amazon Simple Notification Service (Amazon SNS) topic Amazon
-- Resource Name (ARN).
--
-- 'events', 'vaultNotificationConfig_events' - A list of one or more events for which Amazon S3 Glacier will send a
-- notification to the specified Amazon SNS topic.
newVaultNotificationConfig ::
  VaultNotificationConfig
newVaultNotificationConfig =
  VaultNotificationConfig'
    { sNSTopic =
        Prelude.Nothing,
      events = Prelude.Nothing
    }

-- | The Amazon Simple Notification Service (Amazon SNS) topic Amazon
-- Resource Name (ARN).
vaultNotificationConfig_sNSTopic :: Lens.Lens' VaultNotificationConfig (Prelude.Maybe Prelude.Text)
vaultNotificationConfig_sNSTopic = Lens.lens (\VaultNotificationConfig' {sNSTopic} -> sNSTopic) (\s@VaultNotificationConfig' {} a -> s {sNSTopic = a} :: VaultNotificationConfig)

-- | A list of one or more events for which Amazon S3 Glacier will send a
-- notification to the specified Amazon SNS topic.
vaultNotificationConfig_events :: Lens.Lens' VaultNotificationConfig (Prelude.Maybe [Prelude.Text])
vaultNotificationConfig_events = Lens.lens (\VaultNotificationConfig' {events} -> events) (\s@VaultNotificationConfig' {} a -> s {events = a} :: VaultNotificationConfig) Prelude.. Lens.mapping Lens.coerced

instance Data.FromJSON VaultNotificationConfig where
  parseJSON =
    Data.withObject
      "VaultNotificationConfig"
      ( \x ->
          VaultNotificationConfig'
            Prelude.<$> (x Data..:? "SNSTopic")
            Prelude.<*> (x Data..:? "Events" Data..!= Prelude.mempty)
      )

instance Prelude.Hashable VaultNotificationConfig where
  hashWithSalt _salt VaultNotificationConfig' {..} =
    _salt `Prelude.hashWithSalt` sNSTopic
      `Prelude.hashWithSalt` events

instance Prelude.NFData VaultNotificationConfig where
  rnf VaultNotificationConfig' {..} =
    Prelude.rnf sNSTopic
      `Prelude.seq` Prelude.rnf events

instance Data.ToJSON VaultNotificationConfig where
  toJSON VaultNotificationConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("SNSTopic" Data..=) Prelude.<$> sNSTopic,
            ("Events" Data..=) Prelude.<$> events
          ]
      )
