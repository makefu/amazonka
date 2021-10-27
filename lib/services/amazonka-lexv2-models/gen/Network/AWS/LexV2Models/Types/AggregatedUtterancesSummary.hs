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
-- Module      : Network.AWS.LexV2Models.Types.AggregatedUtterancesSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexV2Models.Types.AggregatedUtterancesSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides summary information for aggregated utterances. The
-- @ListAggregatedUtterances@ operations combines all instances of the same
-- utterance into a single aggregated summary.
--
-- /See:/ 'newAggregatedUtterancesSummary' smart constructor.
data AggregatedUtterancesSummary = AggregatedUtterancesSummary'
  { -- | The date and time that the utterance was first recorded in the time
    -- window for aggregation. An utterance may have been sent to Amazon Lex
    -- before that time, but only utterances within the time window are
    -- counted.
    utteranceFirstRecordedInAggregationDuration :: Prelude.Maybe Core.POSIX,
    -- | The last date and time that an utterance was recorded in the time window
    -- for aggregation. An utterance may be sent to Amazon Lex after that time,
    -- but only utterances within the time window are counted.
    utteranceLastRecordedInAggregationDuration :: Prelude.Maybe Core.POSIX,
    -- | The number of times that the utterance was detected by Amazon Lex during
    -- the time period. When an utterance is detected, it activates an intent
    -- or a slot.
    hitCount :: Prelude.Maybe Prelude.Int,
    -- | The number of times that the utterance was missed by Amazon Lex An
    -- utterance is missed when it doesn\'t activate an intent or slot.
    missedCount :: Prelude.Maybe Prelude.Int,
    -- | Aggregated utterance data may contain utterances from versions of your
    -- bot that have since been deleted. When the aggregated contains this kind
    -- of data, this field is set to true.
    containsDataFromDeletedResources :: Prelude.Maybe Prelude.Bool,
    -- | The text of the utterance. If the utterance was used with the
    -- @RecognizeUtterance@ operation, the text is the transcription of the
    -- audio utterance.
    utterance :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AggregatedUtterancesSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'utteranceFirstRecordedInAggregationDuration', 'aggregatedUtterancesSummary_utteranceFirstRecordedInAggregationDuration' - The date and time that the utterance was first recorded in the time
-- window for aggregation. An utterance may have been sent to Amazon Lex
-- before that time, but only utterances within the time window are
-- counted.
--
-- 'utteranceLastRecordedInAggregationDuration', 'aggregatedUtterancesSummary_utteranceLastRecordedInAggregationDuration' - The last date and time that an utterance was recorded in the time window
-- for aggregation. An utterance may be sent to Amazon Lex after that time,
-- but only utterances within the time window are counted.
--
-- 'hitCount', 'aggregatedUtterancesSummary_hitCount' - The number of times that the utterance was detected by Amazon Lex during
-- the time period. When an utterance is detected, it activates an intent
-- or a slot.
--
-- 'missedCount', 'aggregatedUtterancesSummary_missedCount' - The number of times that the utterance was missed by Amazon Lex An
-- utterance is missed when it doesn\'t activate an intent or slot.
--
-- 'containsDataFromDeletedResources', 'aggregatedUtterancesSummary_containsDataFromDeletedResources' - Aggregated utterance data may contain utterances from versions of your
-- bot that have since been deleted. When the aggregated contains this kind
-- of data, this field is set to true.
--
-- 'utterance', 'aggregatedUtterancesSummary_utterance' - The text of the utterance. If the utterance was used with the
-- @RecognizeUtterance@ operation, the text is the transcription of the
-- audio utterance.
newAggregatedUtterancesSummary ::
  AggregatedUtterancesSummary
newAggregatedUtterancesSummary =
  AggregatedUtterancesSummary'
    { utteranceFirstRecordedInAggregationDuration =
        Prelude.Nothing,
      utteranceLastRecordedInAggregationDuration =
        Prelude.Nothing,
      hitCount = Prelude.Nothing,
      missedCount = Prelude.Nothing,
      containsDataFromDeletedResources =
        Prelude.Nothing,
      utterance = Prelude.Nothing
    }

-- | The date and time that the utterance was first recorded in the time
-- window for aggregation. An utterance may have been sent to Amazon Lex
-- before that time, but only utterances within the time window are
-- counted.
aggregatedUtterancesSummary_utteranceFirstRecordedInAggregationDuration :: Lens.Lens' AggregatedUtterancesSummary (Prelude.Maybe Prelude.UTCTime)
aggregatedUtterancesSummary_utteranceFirstRecordedInAggregationDuration = Lens.lens (\AggregatedUtterancesSummary' {utteranceFirstRecordedInAggregationDuration} -> utteranceFirstRecordedInAggregationDuration) (\s@AggregatedUtterancesSummary' {} a -> s {utteranceFirstRecordedInAggregationDuration = a} :: AggregatedUtterancesSummary) Prelude.. Lens.mapping Core._Time

-- | The last date and time that an utterance was recorded in the time window
-- for aggregation. An utterance may be sent to Amazon Lex after that time,
-- but only utterances within the time window are counted.
aggregatedUtterancesSummary_utteranceLastRecordedInAggregationDuration :: Lens.Lens' AggregatedUtterancesSummary (Prelude.Maybe Prelude.UTCTime)
aggregatedUtterancesSummary_utteranceLastRecordedInAggregationDuration = Lens.lens (\AggregatedUtterancesSummary' {utteranceLastRecordedInAggregationDuration} -> utteranceLastRecordedInAggregationDuration) (\s@AggregatedUtterancesSummary' {} a -> s {utteranceLastRecordedInAggregationDuration = a} :: AggregatedUtterancesSummary) Prelude.. Lens.mapping Core._Time

-- | The number of times that the utterance was detected by Amazon Lex during
-- the time period. When an utterance is detected, it activates an intent
-- or a slot.
aggregatedUtterancesSummary_hitCount :: Lens.Lens' AggregatedUtterancesSummary (Prelude.Maybe Prelude.Int)
aggregatedUtterancesSummary_hitCount = Lens.lens (\AggregatedUtterancesSummary' {hitCount} -> hitCount) (\s@AggregatedUtterancesSummary' {} a -> s {hitCount = a} :: AggregatedUtterancesSummary)

-- | The number of times that the utterance was missed by Amazon Lex An
-- utterance is missed when it doesn\'t activate an intent or slot.
aggregatedUtterancesSummary_missedCount :: Lens.Lens' AggregatedUtterancesSummary (Prelude.Maybe Prelude.Int)
aggregatedUtterancesSummary_missedCount = Lens.lens (\AggregatedUtterancesSummary' {missedCount} -> missedCount) (\s@AggregatedUtterancesSummary' {} a -> s {missedCount = a} :: AggregatedUtterancesSummary)

-- | Aggregated utterance data may contain utterances from versions of your
-- bot that have since been deleted. When the aggregated contains this kind
-- of data, this field is set to true.
aggregatedUtterancesSummary_containsDataFromDeletedResources :: Lens.Lens' AggregatedUtterancesSummary (Prelude.Maybe Prelude.Bool)
aggregatedUtterancesSummary_containsDataFromDeletedResources = Lens.lens (\AggregatedUtterancesSummary' {containsDataFromDeletedResources} -> containsDataFromDeletedResources) (\s@AggregatedUtterancesSummary' {} a -> s {containsDataFromDeletedResources = a} :: AggregatedUtterancesSummary)

-- | The text of the utterance. If the utterance was used with the
-- @RecognizeUtterance@ operation, the text is the transcription of the
-- audio utterance.
aggregatedUtterancesSummary_utterance :: Lens.Lens' AggregatedUtterancesSummary (Prelude.Maybe Prelude.Text)
aggregatedUtterancesSummary_utterance = Lens.lens (\AggregatedUtterancesSummary' {utterance} -> utterance) (\s@AggregatedUtterancesSummary' {} a -> s {utterance = a} :: AggregatedUtterancesSummary)

instance Core.FromJSON AggregatedUtterancesSummary where
  parseJSON =
    Core.withObject
      "AggregatedUtterancesSummary"
      ( \x ->
          AggregatedUtterancesSummary'
            Prelude.<$> ( x
                            Core..:? "utteranceFirstRecordedInAggregationDuration"
                        )
            Prelude.<*> ( x
                            Core..:? "utteranceLastRecordedInAggregationDuration"
                        )
            Prelude.<*> (x Core..:? "hitCount")
            Prelude.<*> (x Core..:? "missedCount")
            Prelude.<*> (x Core..:? "containsDataFromDeletedResources")
            Prelude.<*> (x Core..:? "utterance")
      )

instance Prelude.Hashable AggregatedUtterancesSummary

instance Prelude.NFData AggregatedUtterancesSummary
