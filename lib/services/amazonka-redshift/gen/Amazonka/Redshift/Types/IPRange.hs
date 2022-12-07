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
-- Module      : Amazonka.Redshift.Types.IPRange
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Redshift.Types.IPRange where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Internal
import Amazonka.Redshift.Types.Tag

-- | Describes an IP range used in a security group.
--
-- /See:/ 'newIPRange' smart constructor.
data IPRange = IPRange'
  { -- | The list of tags for the IP range.
    tags :: Prelude.Maybe [Tag],
    -- | The status of the IP range, for example, \"authorized\".
    status :: Prelude.Maybe Prelude.Text,
    -- | The IP range in Classless Inter-Domain Routing (CIDR) notation.
    cidrip :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IPRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'iPRange_tags' - The list of tags for the IP range.
--
-- 'status', 'iPRange_status' - The status of the IP range, for example, \"authorized\".
--
-- 'cidrip', 'iPRange_cidrip' - The IP range in Classless Inter-Domain Routing (CIDR) notation.
newIPRange ::
  IPRange
newIPRange =
  IPRange'
    { tags = Prelude.Nothing,
      status = Prelude.Nothing,
      cidrip = Prelude.Nothing
    }

-- | The list of tags for the IP range.
iPRange_tags :: Lens.Lens' IPRange (Prelude.Maybe [Tag])
iPRange_tags = Lens.lens (\IPRange' {tags} -> tags) (\s@IPRange' {} a -> s {tags = a} :: IPRange) Prelude.. Lens.mapping Lens.coerced

-- | The status of the IP range, for example, \"authorized\".
iPRange_status :: Lens.Lens' IPRange (Prelude.Maybe Prelude.Text)
iPRange_status = Lens.lens (\IPRange' {status} -> status) (\s@IPRange' {} a -> s {status = a} :: IPRange)

-- | The IP range in Classless Inter-Domain Routing (CIDR) notation.
iPRange_cidrip :: Lens.Lens' IPRange (Prelude.Maybe Prelude.Text)
iPRange_cidrip = Lens.lens (\IPRange' {cidrip} -> cidrip) (\s@IPRange' {} a -> s {cidrip = a} :: IPRange)

instance Data.FromXML IPRange where
  parseXML x =
    IPRange'
      Prelude.<$> ( x Data..@? "Tags" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Data.parseXMLList "Tag")
                  )
      Prelude.<*> (x Data..@? "Status")
      Prelude.<*> (x Data..@? "CIDRIP")

instance Prelude.Hashable IPRange where
  hashWithSalt _salt IPRange' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` cidrip

instance Prelude.NFData IPRange where
  rnf IPRange' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf cidrip
