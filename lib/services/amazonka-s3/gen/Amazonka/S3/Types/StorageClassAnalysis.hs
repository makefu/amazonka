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
-- Module      : Amazonka.S3.Types.StorageClassAnalysis
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.StorageClassAnalysis where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal
import Amazonka.S3.Types.StorageClassAnalysisDataExport

-- | Specifies data related to access patterns to be collected and made
-- available to analyze the tradeoffs between different storage classes for
-- an Amazon S3 bucket.
--
-- /See:/ 'newStorageClassAnalysis' smart constructor.
data StorageClassAnalysis = StorageClassAnalysis'
  { -- | Specifies how data related to the storage class analysis for an Amazon
    -- S3 bucket should be exported.
    dataExport :: Prelude.Maybe StorageClassAnalysisDataExport
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StorageClassAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataExport', 'storageClassAnalysis_dataExport' - Specifies how data related to the storage class analysis for an Amazon
-- S3 bucket should be exported.
newStorageClassAnalysis ::
  StorageClassAnalysis
newStorageClassAnalysis =
  StorageClassAnalysis' {dataExport = Prelude.Nothing}

-- | Specifies how data related to the storage class analysis for an Amazon
-- S3 bucket should be exported.
storageClassAnalysis_dataExport :: Lens.Lens' StorageClassAnalysis (Prelude.Maybe StorageClassAnalysisDataExport)
storageClassAnalysis_dataExport = Lens.lens (\StorageClassAnalysis' {dataExport} -> dataExport) (\s@StorageClassAnalysis' {} a -> s {dataExport = a} :: StorageClassAnalysis)

instance Data.FromXML StorageClassAnalysis where
  parseXML x =
    StorageClassAnalysis'
      Prelude.<$> (x Data..@? "DataExport")

instance Prelude.Hashable StorageClassAnalysis where
  hashWithSalt _salt StorageClassAnalysis' {..} =
    _salt `Prelude.hashWithSalt` dataExport

instance Prelude.NFData StorageClassAnalysis where
  rnf StorageClassAnalysis' {..} =
    Prelude.rnf dataExport

instance Data.ToXML StorageClassAnalysis where
  toXML StorageClassAnalysis' {..} =
    Prelude.mconcat ["DataExport" Data.@= dataExport]
