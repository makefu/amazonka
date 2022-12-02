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
-- Module      : Amazonka.ChimeSDKMessaging.Types.ChannelMessageSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSDKMessaging.Types.ChannelMessageSummary where

import Amazonka.ChimeSDKMessaging.Types.ChannelMessageStatusStructure
import Amazonka.ChimeSDKMessaging.Types.ChannelMessageType
import Amazonka.ChimeSDKMessaging.Types.Identity
import Amazonka.ChimeSDKMessaging.Types.MessageAttributeValue
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Summary of the messages in a @Channel@.
--
-- /See:/ 'newChannelMessageSummary' smart constructor.
data ChannelMessageSummary = ChannelMessageSummary'
  { -- | The time at which a message was last updated.
    lastUpdatedTimestamp :: Prelude.Maybe Data.POSIX,
    -- | The type of message.
    type' :: Prelude.Maybe ChannelMessageType,
    -- | The metadata of the message.
    metadata :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The time at which the message summary was created.
    createdTimestamp :: Prelude.Maybe Data.POSIX,
    -- | Indicates whether a message was redacted.
    redacted :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the message.
    messageId :: Prelude.Maybe Prelude.Text,
    -- | The message status. The status value is @SENT@ for messages sent to a
    -- channel without a channel flow. For channels associated with channel
    -- flow, the value determines the processing stage.
    status :: Prelude.Maybe ChannelMessageStatusStructure,
    -- | The message attribues listed in a the summary of a channel message.
    messageAttributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text MessageAttributeValue),
    -- | The time at which a message was last edited.
    lastEditedTimestamp :: Prelude.Maybe Data.POSIX,
    -- | The message sender.
    sender :: Prelude.Maybe Identity,
    -- | The content of the message.
    content :: Prelude.Maybe (Data.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelMessageSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimestamp', 'channelMessageSummary_lastUpdatedTimestamp' - The time at which a message was last updated.
--
-- 'type'', 'channelMessageSummary_type' - The type of message.
--
-- 'metadata', 'channelMessageSummary_metadata' - The metadata of the message.
--
-- 'createdTimestamp', 'channelMessageSummary_createdTimestamp' - The time at which the message summary was created.
--
-- 'redacted', 'channelMessageSummary_redacted' - Indicates whether a message was redacted.
--
-- 'messageId', 'channelMessageSummary_messageId' - The ID of the message.
--
-- 'status', 'channelMessageSummary_status' - The message status. The status value is @SENT@ for messages sent to a
-- channel without a channel flow. For channels associated with channel
-- flow, the value determines the processing stage.
--
-- 'messageAttributes', 'channelMessageSummary_messageAttributes' - The message attribues listed in a the summary of a channel message.
--
-- 'lastEditedTimestamp', 'channelMessageSummary_lastEditedTimestamp' - The time at which a message was last edited.
--
-- 'sender', 'channelMessageSummary_sender' - The message sender.
--
-- 'content', 'channelMessageSummary_content' - The content of the message.
newChannelMessageSummary ::
  ChannelMessageSummary
newChannelMessageSummary =
  ChannelMessageSummary'
    { lastUpdatedTimestamp =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      metadata = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      redacted = Prelude.Nothing,
      messageId = Prelude.Nothing,
      status = Prelude.Nothing,
      messageAttributes = Prelude.Nothing,
      lastEditedTimestamp = Prelude.Nothing,
      sender = Prelude.Nothing,
      content = Prelude.Nothing
    }

-- | The time at which a message was last updated.
channelMessageSummary_lastUpdatedTimestamp :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Prelude.UTCTime)
channelMessageSummary_lastUpdatedTimestamp = Lens.lens (\ChannelMessageSummary' {lastUpdatedTimestamp} -> lastUpdatedTimestamp) (\s@ChannelMessageSummary' {} a -> s {lastUpdatedTimestamp = a} :: ChannelMessageSummary) Prelude.. Lens.mapping Data._Time

-- | The type of message.
channelMessageSummary_type :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe ChannelMessageType)
channelMessageSummary_type = Lens.lens (\ChannelMessageSummary' {type'} -> type') (\s@ChannelMessageSummary' {} a -> s {type' = a} :: ChannelMessageSummary)

-- | The metadata of the message.
channelMessageSummary_metadata :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Prelude.Text)
channelMessageSummary_metadata = Lens.lens (\ChannelMessageSummary' {metadata} -> metadata) (\s@ChannelMessageSummary' {} a -> s {metadata = a} :: ChannelMessageSummary) Prelude.. Lens.mapping Data._Sensitive

-- | The time at which the message summary was created.
channelMessageSummary_createdTimestamp :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Prelude.UTCTime)
channelMessageSummary_createdTimestamp = Lens.lens (\ChannelMessageSummary' {createdTimestamp} -> createdTimestamp) (\s@ChannelMessageSummary' {} a -> s {createdTimestamp = a} :: ChannelMessageSummary) Prelude.. Lens.mapping Data._Time

-- | Indicates whether a message was redacted.
channelMessageSummary_redacted :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Prelude.Bool)
channelMessageSummary_redacted = Lens.lens (\ChannelMessageSummary' {redacted} -> redacted) (\s@ChannelMessageSummary' {} a -> s {redacted = a} :: ChannelMessageSummary)

-- | The ID of the message.
channelMessageSummary_messageId :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Prelude.Text)
channelMessageSummary_messageId = Lens.lens (\ChannelMessageSummary' {messageId} -> messageId) (\s@ChannelMessageSummary' {} a -> s {messageId = a} :: ChannelMessageSummary)

-- | The message status. The status value is @SENT@ for messages sent to a
-- channel without a channel flow. For channels associated with channel
-- flow, the value determines the processing stage.
channelMessageSummary_status :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe ChannelMessageStatusStructure)
channelMessageSummary_status = Lens.lens (\ChannelMessageSummary' {status} -> status) (\s@ChannelMessageSummary' {} a -> s {status = a} :: ChannelMessageSummary)

-- | The message attribues listed in a the summary of a channel message.
channelMessageSummary_messageAttributes :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text MessageAttributeValue))
channelMessageSummary_messageAttributes = Lens.lens (\ChannelMessageSummary' {messageAttributes} -> messageAttributes) (\s@ChannelMessageSummary' {} a -> s {messageAttributes = a} :: ChannelMessageSummary) Prelude.. Lens.mapping Lens.coerced

-- | The time at which a message was last edited.
channelMessageSummary_lastEditedTimestamp :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Prelude.UTCTime)
channelMessageSummary_lastEditedTimestamp = Lens.lens (\ChannelMessageSummary' {lastEditedTimestamp} -> lastEditedTimestamp) (\s@ChannelMessageSummary' {} a -> s {lastEditedTimestamp = a} :: ChannelMessageSummary) Prelude.. Lens.mapping Data._Time

-- | The message sender.
channelMessageSummary_sender :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Identity)
channelMessageSummary_sender = Lens.lens (\ChannelMessageSummary' {sender} -> sender) (\s@ChannelMessageSummary' {} a -> s {sender = a} :: ChannelMessageSummary)

-- | The content of the message.
channelMessageSummary_content :: Lens.Lens' ChannelMessageSummary (Prelude.Maybe Prelude.Text)
channelMessageSummary_content = Lens.lens (\ChannelMessageSummary' {content} -> content) (\s@ChannelMessageSummary' {} a -> s {content = a} :: ChannelMessageSummary) Prelude.. Lens.mapping Data._Sensitive

instance Data.FromJSON ChannelMessageSummary where
  parseJSON =
    Data.withObject
      "ChannelMessageSummary"
      ( \x ->
          ChannelMessageSummary'
            Prelude.<$> (x Data..:? "LastUpdatedTimestamp")
            Prelude.<*> (x Data..:? "Type")
            Prelude.<*> (x Data..:? "Metadata")
            Prelude.<*> (x Data..:? "CreatedTimestamp")
            Prelude.<*> (x Data..:? "Redacted")
            Prelude.<*> (x Data..:? "MessageId")
            Prelude.<*> (x Data..:? "Status")
            Prelude.<*> ( x Data..:? "MessageAttributes"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "LastEditedTimestamp")
            Prelude.<*> (x Data..:? "Sender")
            Prelude.<*> (x Data..:? "Content")
      )

instance Prelude.Hashable ChannelMessageSummary where
  hashWithSalt _salt ChannelMessageSummary' {..} =
    _salt `Prelude.hashWithSalt` lastUpdatedTimestamp
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` metadata
      `Prelude.hashWithSalt` createdTimestamp
      `Prelude.hashWithSalt` redacted
      `Prelude.hashWithSalt` messageId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` messageAttributes
      `Prelude.hashWithSalt` lastEditedTimestamp
      `Prelude.hashWithSalt` sender
      `Prelude.hashWithSalt` content

instance Prelude.NFData ChannelMessageSummary where
  rnf ChannelMessageSummary' {..} =
    Prelude.rnf lastUpdatedTimestamp
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf metadata
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf redacted
      `Prelude.seq` Prelude.rnf messageId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf messageAttributes
      `Prelude.seq` Prelude.rnf lastEditedTimestamp
      `Prelude.seq` Prelude.rnf sender
      `Prelude.seq` Prelude.rnf content
