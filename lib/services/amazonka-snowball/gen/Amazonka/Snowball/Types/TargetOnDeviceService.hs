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
-- Module      : Amazonka.Snowball.Types.TargetOnDeviceService
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Snowball.Types.TargetOnDeviceService where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.Snowball.Types.DeviceServiceName
import Amazonka.Snowball.Types.TransferOption

-- | An object that represents the service or services on the Snow Family
-- device that your transferred data will be exported from or imported
-- into. Amazon Web Services Snow Family supports Amazon S3 and NFS
-- (Network File System).
--
-- /See:/ 'newTargetOnDeviceService' smart constructor.
data TargetOnDeviceService = TargetOnDeviceService'
  { -- | Specifies whether the data is being imported or exported. You can import
    -- or export the data, or use it locally on the device.
    transferOption :: Prelude.Maybe TransferOption,
    -- | Specifies the name of the service on the Snow Family device that your
    -- transferred data will be exported from or imported into.
    serviceName :: Prelude.Maybe DeviceServiceName
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TargetOnDeviceService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transferOption', 'targetOnDeviceService_transferOption' - Specifies whether the data is being imported or exported. You can import
-- or export the data, or use it locally on the device.
--
-- 'serviceName', 'targetOnDeviceService_serviceName' - Specifies the name of the service on the Snow Family device that your
-- transferred data will be exported from or imported into.
newTargetOnDeviceService ::
  TargetOnDeviceService
newTargetOnDeviceService =
  TargetOnDeviceService'
    { transferOption =
        Prelude.Nothing,
      serviceName = Prelude.Nothing
    }

-- | Specifies whether the data is being imported or exported. You can import
-- or export the data, or use it locally on the device.
targetOnDeviceService_transferOption :: Lens.Lens' TargetOnDeviceService (Prelude.Maybe TransferOption)
targetOnDeviceService_transferOption = Lens.lens (\TargetOnDeviceService' {transferOption} -> transferOption) (\s@TargetOnDeviceService' {} a -> s {transferOption = a} :: TargetOnDeviceService)

-- | Specifies the name of the service on the Snow Family device that your
-- transferred data will be exported from or imported into.
targetOnDeviceService_serviceName :: Lens.Lens' TargetOnDeviceService (Prelude.Maybe DeviceServiceName)
targetOnDeviceService_serviceName = Lens.lens (\TargetOnDeviceService' {serviceName} -> serviceName) (\s@TargetOnDeviceService' {} a -> s {serviceName = a} :: TargetOnDeviceService)

instance Data.FromJSON TargetOnDeviceService where
  parseJSON =
    Data.withObject
      "TargetOnDeviceService"
      ( \x ->
          TargetOnDeviceService'
            Prelude.<$> (x Data..:? "TransferOption")
            Prelude.<*> (x Data..:? "ServiceName")
      )

instance Prelude.Hashable TargetOnDeviceService where
  hashWithSalt _salt TargetOnDeviceService' {..} =
    _salt `Prelude.hashWithSalt` transferOption
      `Prelude.hashWithSalt` serviceName

instance Prelude.NFData TargetOnDeviceService where
  rnf TargetOnDeviceService' {..} =
    Prelude.rnf transferOption
      `Prelude.seq` Prelude.rnf serviceName

instance Data.ToJSON TargetOnDeviceService where
  toJSON TargetOnDeviceService' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("TransferOption" Data..=)
              Prelude.<$> transferOption,
            ("ServiceName" Data..=) Prelude.<$> serviceName
          ]
      )
