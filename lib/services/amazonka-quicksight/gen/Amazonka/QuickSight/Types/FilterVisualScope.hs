{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.QuickSight.Types.FilterVisualScope
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.FilterVisualScope
  ( FilterVisualScope
      ( ..,
        FilterVisualScope_ALL_VISUALS,
        FilterVisualScope_SELECTED_VISUALS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype FilterVisualScope = FilterVisualScope'
  { fromFilterVisualScope ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern FilterVisualScope_ALL_VISUALS :: FilterVisualScope
pattern FilterVisualScope_ALL_VISUALS = FilterVisualScope' "ALL_VISUALS"

pattern FilterVisualScope_SELECTED_VISUALS :: FilterVisualScope
pattern FilterVisualScope_SELECTED_VISUALS = FilterVisualScope' "SELECTED_VISUALS"

{-# COMPLETE
  FilterVisualScope_ALL_VISUALS,
  FilterVisualScope_SELECTED_VISUALS,
  FilterVisualScope'
  #-}
