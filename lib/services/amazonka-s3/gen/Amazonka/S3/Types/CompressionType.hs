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
-- Module      : Amazonka.S3.Types.CompressionType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.CompressionType
  ( CompressionType
      ( ..,
        CompressionType_BZIP2,
        CompressionType_GZIP,
        CompressionType_NONE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

newtype CompressionType = CompressionType'
  { fromCompressionType ::
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

pattern CompressionType_BZIP2 :: CompressionType
pattern CompressionType_BZIP2 = CompressionType' "BZIP2"

pattern CompressionType_GZIP :: CompressionType
pattern CompressionType_GZIP = CompressionType' "GZIP"

pattern CompressionType_NONE :: CompressionType
pattern CompressionType_NONE = CompressionType' "NONE"

{-# COMPLETE
  CompressionType_BZIP2,
  CompressionType_GZIP,
  CompressionType_NONE,
  CompressionType'
  #-}
