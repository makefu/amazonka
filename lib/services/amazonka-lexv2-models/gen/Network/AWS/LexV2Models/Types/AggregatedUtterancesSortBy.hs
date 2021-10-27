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
-- Module      : Network.AWS.LexV2Models.Types.AggregatedUtterancesSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexV2Models.Types.AggregatedUtterancesSortBy where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LexV2Models.Types.AggregatedUtterancesSortAttribute
import Network.AWS.LexV2Models.Types.SortOrder
import qualified Network.AWS.Prelude as Prelude

-- | Specifies attributes for sorting a list of utterances.
--
-- /See:/ 'newAggregatedUtterancesSortBy' smart constructor.
data AggregatedUtterancesSortBy = AggregatedUtterancesSortBy'
  { -- | The utterance attribute to sort by.
    attribute :: AggregatedUtterancesSortAttribute,
    -- | Specifies whether to sort the aggregated utterances in ascending or
    -- descending order.
    order :: SortOrder
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AggregatedUtterancesSortBy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attribute', 'aggregatedUtterancesSortBy_attribute' - The utterance attribute to sort by.
--
-- 'order', 'aggregatedUtterancesSortBy_order' - Specifies whether to sort the aggregated utterances in ascending or
-- descending order.
newAggregatedUtterancesSortBy ::
  -- | 'attribute'
  AggregatedUtterancesSortAttribute ->
  -- | 'order'
  SortOrder ->
  AggregatedUtterancesSortBy
newAggregatedUtterancesSortBy pAttribute_ pOrder_ =
  AggregatedUtterancesSortBy'
    { attribute =
        pAttribute_,
      order = pOrder_
    }

-- | The utterance attribute to sort by.
aggregatedUtterancesSortBy_attribute :: Lens.Lens' AggregatedUtterancesSortBy AggregatedUtterancesSortAttribute
aggregatedUtterancesSortBy_attribute = Lens.lens (\AggregatedUtterancesSortBy' {attribute} -> attribute) (\s@AggregatedUtterancesSortBy' {} a -> s {attribute = a} :: AggregatedUtterancesSortBy)

-- | Specifies whether to sort the aggregated utterances in ascending or
-- descending order.
aggregatedUtterancesSortBy_order :: Lens.Lens' AggregatedUtterancesSortBy SortOrder
aggregatedUtterancesSortBy_order = Lens.lens (\AggregatedUtterancesSortBy' {order} -> order) (\s@AggregatedUtterancesSortBy' {} a -> s {order = a} :: AggregatedUtterancesSortBy)

instance Prelude.Hashable AggregatedUtterancesSortBy

instance Prelude.NFData AggregatedUtterancesSortBy

instance Core.ToJSON AggregatedUtterancesSortBy where
  toJSON AggregatedUtterancesSortBy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("attribute" Core..= attribute),
            Prelude.Just ("order" Core..= order)
          ]
      )
