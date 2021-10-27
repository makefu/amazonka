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
-- Module      : Network.AWS.LexV2Models.Types.ConversationLogSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexV2Models.Types.ConversationLogSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LexV2Models.Types.AudioLogSetting
import Network.AWS.LexV2Models.Types.TextLogSetting
import qualified Network.AWS.Prelude as Prelude

-- | Configures conversation logging that saves audio, text, and metadata for
-- the conversations with your users.
--
-- /See:/ 'newConversationLogSettings' smart constructor.
data ConversationLogSettings = ConversationLogSettings'
  { -- | The Amazon S3 settings for logging audio to an S3 bucket.
    audioLogSettings :: Prelude.Maybe (Prelude.NonEmpty AudioLogSetting),
    -- | The Amazon CloudWatch Logs settings for logging text and metadata.
    textLogSettings :: Prelude.Maybe (Prelude.NonEmpty TextLogSetting)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConversationLogSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'audioLogSettings', 'conversationLogSettings_audioLogSettings' - The Amazon S3 settings for logging audio to an S3 bucket.
--
-- 'textLogSettings', 'conversationLogSettings_textLogSettings' - The Amazon CloudWatch Logs settings for logging text and metadata.
newConversationLogSettings ::
  ConversationLogSettings
newConversationLogSettings =
  ConversationLogSettings'
    { audioLogSettings =
        Prelude.Nothing,
      textLogSettings = Prelude.Nothing
    }

-- | The Amazon S3 settings for logging audio to an S3 bucket.
conversationLogSettings_audioLogSettings :: Lens.Lens' ConversationLogSettings (Prelude.Maybe (Prelude.NonEmpty AudioLogSetting))
conversationLogSettings_audioLogSettings = Lens.lens (\ConversationLogSettings' {audioLogSettings} -> audioLogSettings) (\s@ConversationLogSettings' {} a -> s {audioLogSettings = a} :: ConversationLogSettings) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon CloudWatch Logs settings for logging text and metadata.
conversationLogSettings_textLogSettings :: Lens.Lens' ConversationLogSettings (Prelude.Maybe (Prelude.NonEmpty TextLogSetting))
conversationLogSettings_textLogSettings = Lens.lens (\ConversationLogSettings' {textLogSettings} -> textLogSettings) (\s@ConversationLogSettings' {} a -> s {textLogSettings = a} :: ConversationLogSettings) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ConversationLogSettings where
  parseJSON =
    Core.withObject
      "ConversationLogSettings"
      ( \x ->
          ConversationLogSettings'
            Prelude.<$> (x Core..:? "audioLogSettings")
            Prelude.<*> (x Core..:? "textLogSettings")
      )

instance Prelude.Hashable ConversationLogSettings

instance Prelude.NFData ConversationLogSettings

instance Core.ToJSON ConversationLogSettings where
  toJSON ConversationLogSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("audioLogSettings" Core..=)
              Prelude.<$> audioLogSettings,
            ("textLogSettings" Core..=)
              Prelude.<$> textLogSettings
          ]
      )
