{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Config.PutConfigRule
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates an Config rule to evaluate if your Amazon Web Services
-- resources comply with your desired configurations. For information on
-- how many Config rules you can have per account, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html Service Limits>
-- in the /Config Developer Guide/.
--
-- There are two types of rules: Config Custom Rules and Config Managed
-- Rules. You can use @PutConfigRule@ to create both Config custom rules
-- and Config managed rules.
--
-- Custom rules are rules that you can create using either Guard or Lambda
-- functions. Guard
-- (<https://github.com/aws-cloudformation/cloudformation-guard Guard GitHub Repository>)
-- is a policy-as-code language that allows you to write policies that are
-- enforced by Config Custom Policy rules. Lambda uses custom code that you
-- upload to evaluate a custom rule. If you are adding a new Custom Lambda
-- rule, you first need to create an Lambda function that the rule invokes
-- to evaluate your resources. When you use @PutConfigRule@ to add a Custom
-- Lambda rule to Config, you must specify the Amazon Resource Name (ARN)
-- that Lambda assigns to the function. You specify the ARN in the
-- @SourceIdentifier@ key. This key is part of the @Source@ object, which
-- is part of the @ConfigRule@ object.
--
-- Managed rules are predefined, customizable rules created by Config. For
-- a list of managed rules, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html List of Config Managed Rules>.
-- If you are adding an Config managed rule, you must specify the rule\'s
-- identifier for the @SourceIdentifier@ key.
--
-- For any new rule that you add, specify the @ConfigRuleName@ in the
-- @ConfigRule@ object. Do not specify the @ConfigRuleArn@ or the
-- @ConfigRuleId@. These values are generated by Config for new rules.
--
-- If you are updating a rule that you added previously, you can specify
-- the rule by @ConfigRuleName@, @ConfigRuleId@, or @ConfigRuleArn@ in the
-- @ConfigRule@ data type that you use in this request.
--
-- For more information about developing and using Config rules, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html Evaluating Amazon Web Services resource Configurations with Config>
-- in the /Config Developer Guide/.
module Amazonka.Config.PutConfigRule
  ( -- * Creating a Request
    PutConfigRule (..),
    newPutConfigRule,

    -- * Request Lenses
    putConfigRule_tags,
    putConfigRule_configRule,

    -- * Destructuring the Response
    PutConfigRuleResponse (..),
    newPutConfigRuleResponse,
  )
where

import Amazonka.Config.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newPutConfigRule' smart constructor.
data PutConfigRule = PutConfigRule'
  { -- | An array of tag object.
    tags :: Prelude.Maybe [Tag],
    -- | The rule that you want to add to your account.
    configRule :: ConfigRule
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutConfigRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'putConfigRule_tags' - An array of tag object.
--
-- 'configRule', 'putConfigRule_configRule' - The rule that you want to add to your account.
newPutConfigRule ::
  -- | 'configRule'
  ConfigRule ->
  PutConfigRule
newPutConfigRule pConfigRule_ =
  PutConfigRule'
    { tags = Prelude.Nothing,
      configRule = pConfigRule_
    }

-- | An array of tag object.
putConfigRule_tags :: Lens.Lens' PutConfigRule (Prelude.Maybe [Tag])
putConfigRule_tags = Lens.lens (\PutConfigRule' {tags} -> tags) (\s@PutConfigRule' {} a -> s {tags = a} :: PutConfigRule) Prelude.. Lens.mapping Lens.coerced

-- | The rule that you want to add to your account.
putConfigRule_configRule :: Lens.Lens' PutConfigRule ConfigRule
putConfigRule_configRule = Lens.lens (\PutConfigRule' {configRule} -> configRule) (\s@PutConfigRule' {} a -> s {configRule = a} :: PutConfigRule)

instance Core.AWSRequest PutConfigRule where
  type
    AWSResponse PutConfigRule =
      PutConfigRuleResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveNull PutConfigRuleResponse'

instance Prelude.Hashable PutConfigRule where
  hashWithSalt _salt PutConfigRule' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` configRule

instance Prelude.NFData PutConfigRule where
  rnf PutConfigRule' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf configRule

instance Core.ToHeaders PutConfigRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.PutConfigRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutConfigRule where
  toJSON PutConfigRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("ConfigRule" Core..= configRule)
          ]
      )

instance Core.ToPath PutConfigRule where
  toPath = Prelude.const "/"

instance Core.ToQuery PutConfigRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutConfigRuleResponse' smart constructor.
data PutConfigRuleResponse = PutConfigRuleResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutConfigRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutConfigRuleResponse ::
  PutConfigRuleResponse
newPutConfigRuleResponse = PutConfigRuleResponse'

instance Prelude.NFData PutConfigRuleResponse where
  rnf _ = ()
