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
-- Module      : Network.AWS.LexV2Models.Types.SampleValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexV2Models.Types.SampleValue where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Defines one of the values for a slot type.
--
-- /See:/ 'newSampleValue' smart constructor.
data SampleValue = SampleValue'
  { -- | The value that can be used for a slot type.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SampleValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'sampleValue_value' - The value that can be used for a slot type.
newSampleValue ::
  -- | 'value'
  Prelude.Text ->
  SampleValue
newSampleValue pValue_ =
  SampleValue' {value = pValue_}

-- | The value that can be used for a slot type.
sampleValue_value :: Lens.Lens' SampleValue Prelude.Text
sampleValue_value = Lens.lens (\SampleValue' {value} -> value) (\s@SampleValue' {} a -> s {value = a} :: SampleValue)

instance Core.FromJSON SampleValue where
  parseJSON =
    Core.withObject
      "SampleValue"
      (\x -> SampleValue' Prelude.<$> (x Core..: "value"))

instance Prelude.Hashable SampleValue

instance Prelude.NFData SampleValue

instance Core.ToJSON SampleValue where
  toJSON SampleValue' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("value" Core..= value)]
      )
