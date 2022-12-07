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
-- Module      : Amazonka.WAFRegional.Types.WafRuleType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFRegional.Types.WafRuleType
  ( WafRuleType
      ( ..,
        WafRuleType_GROUP,
        WafRuleType_RATE_BASED,
        WafRuleType_REGULAR
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype WafRuleType = WafRuleType'
  { fromWafRuleType ::
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

pattern WafRuleType_GROUP :: WafRuleType
pattern WafRuleType_GROUP = WafRuleType' "GROUP"

pattern WafRuleType_RATE_BASED :: WafRuleType
pattern WafRuleType_RATE_BASED = WafRuleType' "RATE_BASED"

pattern WafRuleType_REGULAR :: WafRuleType
pattern WafRuleType_REGULAR = WafRuleType' "REGULAR"

{-# COMPLETE
  WafRuleType_GROUP,
  WafRuleType_RATE_BASED,
  WafRuleType_REGULAR,
  WafRuleType'
  #-}
