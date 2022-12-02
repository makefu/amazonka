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
-- Module      : Amazonka.LexModels.Types.BuiltinIntentSlot
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexModels.Types.BuiltinIntentSlot where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Provides information about a slot used in a built-in intent.
--
-- /See:/ 'newBuiltinIntentSlot' smart constructor.
data BuiltinIntentSlot = BuiltinIntentSlot'
  { -- | A list of the slots defined for the intent.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BuiltinIntentSlot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'builtinIntentSlot_name' - A list of the slots defined for the intent.
newBuiltinIntentSlot ::
  BuiltinIntentSlot
newBuiltinIntentSlot =
  BuiltinIntentSlot' {name = Prelude.Nothing}

-- | A list of the slots defined for the intent.
builtinIntentSlot_name :: Lens.Lens' BuiltinIntentSlot (Prelude.Maybe Prelude.Text)
builtinIntentSlot_name = Lens.lens (\BuiltinIntentSlot' {name} -> name) (\s@BuiltinIntentSlot' {} a -> s {name = a} :: BuiltinIntentSlot)

instance Data.FromJSON BuiltinIntentSlot where
  parseJSON =
    Data.withObject
      "BuiltinIntentSlot"
      ( \x ->
          BuiltinIntentSlot' Prelude.<$> (x Data..:? "name")
      )

instance Prelude.Hashable BuiltinIntentSlot where
  hashWithSalt _salt BuiltinIntentSlot' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData BuiltinIntentSlot where
  rnf BuiltinIntentSlot' {..} = Prelude.rnf name
