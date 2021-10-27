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
-- Module      : Network.AWS.Personalize.CreateSolutionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Trains or retrains an active solution. A solution is created using the
-- CreateSolution operation and must be in the ACTIVE state before calling
-- @CreateSolutionVersion@. A new version of the solution is created every
-- time you call this operation.
--
-- __Status__
--
-- A solution version can be in one of the following states:
--
-- -   CREATE PENDING
--
-- -   CREATE IN_PROGRESS
--
-- -   ACTIVE
--
-- -   CREATE FAILED
--
-- -   CREATE STOPPING
--
-- -   CREATE STOPPED
--
-- To get the status of the version, call DescribeSolutionVersion. Wait
-- until the status shows as ACTIVE before calling @CreateCampaign@.
--
-- If the status shows as CREATE FAILED, the response includes a
-- @failureReason@ key, which describes why the job failed.
--
-- __Related APIs__
--
-- -   ListSolutionVersions
--
-- -   DescribeSolutionVersion
--
-- -   ListSolutions
--
-- -   CreateSolution
--
-- -   DescribeSolution
--
-- -   DeleteSolution
module Network.AWS.Personalize.CreateSolutionVersion
  ( -- * Creating a Request
    CreateSolutionVersion (..),
    newCreateSolutionVersion,

    -- * Request Lenses
    createSolutionVersion_trainingMode,
    createSolutionVersion_solutionArn,

    -- * Destructuring the Response
    CreateSolutionVersionResponse (..),
    newCreateSolutionVersionResponse,

    -- * Response Lenses
    createSolutionVersionResponse_solutionVersionArn,
    createSolutionVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateSolutionVersion' smart constructor.
data CreateSolutionVersion = CreateSolutionVersion'
  { -- | The scope of training to be performed when creating the solution
    -- version. The @FULL@ option trains the solution version based on the
    -- entirety of the input solution\'s training data, while the @UPDATE@
    -- option processes only the data that has changed in comparison to the
    -- input solution. Choose @UPDATE@ when you want to incrementally update
    -- your solution version instead of creating an entirely new one.
    --
    -- The @UPDATE@ option can only be used when you already have an active
    -- solution version created from the input solution using the @FULL@ option
    -- and the input solution was trained with the
    -- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html User-Personalization>
    -- recipe or the
    -- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html HRNN-Coldstart>
    -- recipe.
    trainingMode :: Prelude.Maybe TrainingMode,
    -- | The Amazon Resource Name (ARN) of the solution containing the training
    -- configuration information.
    solutionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSolutionVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'trainingMode', 'createSolutionVersion_trainingMode' - The scope of training to be performed when creating the solution
-- version. The @FULL@ option trains the solution version based on the
-- entirety of the input solution\'s training data, while the @UPDATE@
-- option processes only the data that has changed in comparison to the
-- input solution. Choose @UPDATE@ when you want to incrementally update
-- your solution version instead of creating an entirely new one.
--
-- The @UPDATE@ option can only be used when you already have an active
-- solution version created from the input solution using the @FULL@ option
-- and the input solution was trained with the
-- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html User-Personalization>
-- recipe or the
-- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html HRNN-Coldstart>
-- recipe.
--
-- 'solutionArn', 'createSolutionVersion_solutionArn' - The Amazon Resource Name (ARN) of the solution containing the training
-- configuration information.
newCreateSolutionVersion ::
  -- | 'solutionArn'
  Prelude.Text ->
  CreateSolutionVersion
newCreateSolutionVersion pSolutionArn_ =
  CreateSolutionVersion'
    { trainingMode =
        Prelude.Nothing,
      solutionArn = pSolutionArn_
    }

-- | The scope of training to be performed when creating the solution
-- version. The @FULL@ option trains the solution version based on the
-- entirety of the input solution\'s training data, while the @UPDATE@
-- option processes only the data that has changed in comparison to the
-- input solution. Choose @UPDATE@ when you want to incrementally update
-- your solution version instead of creating an entirely new one.
--
-- The @UPDATE@ option can only be used when you already have an active
-- solution version created from the input solution using the @FULL@ option
-- and the input solution was trained with the
-- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html User-Personalization>
-- recipe or the
-- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html HRNN-Coldstart>
-- recipe.
createSolutionVersion_trainingMode :: Lens.Lens' CreateSolutionVersion (Prelude.Maybe TrainingMode)
createSolutionVersion_trainingMode = Lens.lens (\CreateSolutionVersion' {trainingMode} -> trainingMode) (\s@CreateSolutionVersion' {} a -> s {trainingMode = a} :: CreateSolutionVersion)

-- | The Amazon Resource Name (ARN) of the solution containing the training
-- configuration information.
createSolutionVersion_solutionArn :: Lens.Lens' CreateSolutionVersion Prelude.Text
createSolutionVersion_solutionArn = Lens.lens (\CreateSolutionVersion' {solutionArn} -> solutionArn) (\s@CreateSolutionVersion' {} a -> s {solutionArn = a} :: CreateSolutionVersion)

instance Core.AWSRequest CreateSolutionVersion where
  type
    AWSResponse CreateSolutionVersion =
      CreateSolutionVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSolutionVersionResponse'
            Prelude.<$> (x Core..?> "solutionVersionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSolutionVersion

instance Prelude.NFData CreateSolutionVersion

instance Core.ToHeaders CreateSolutionVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.CreateSolutionVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateSolutionVersion where
  toJSON CreateSolutionVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("trainingMode" Core..=) Prelude.<$> trainingMode,
            Prelude.Just ("solutionArn" Core..= solutionArn)
          ]
      )

instance Core.ToPath CreateSolutionVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateSolutionVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSolutionVersionResponse' smart constructor.
data CreateSolutionVersionResponse = CreateSolutionVersionResponse'
  { -- | The ARN of the new solution version.
    solutionVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSolutionVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'solutionVersionArn', 'createSolutionVersionResponse_solutionVersionArn' - The ARN of the new solution version.
--
-- 'httpStatus', 'createSolutionVersionResponse_httpStatus' - The response's http status code.
newCreateSolutionVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSolutionVersionResponse
newCreateSolutionVersionResponse pHttpStatus_ =
  CreateSolutionVersionResponse'
    { solutionVersionArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the new solution version.
createSolutionVersionResponse_solutionVersionArn :: Lens.Lens' CreateSolutionVersionResponse (Prelude.Maybe Prelude.Text)
createSolutionVersionResponse_solutionVersionArn = Lens.lens (\CreateSolutionVersionResponse' {solutionVersionArn} -> solutionVersionArn) (\s@CreateSolutionVersionResponse' {} a -> s {solutionVersionArn = a} :: CreateSolutionVersionResponse)

-- | The response's http status code.
createSolutionVersionResponse_httpStatus :: Lens.Lens' CreateSolutionVersionResponse Prelude.Int
createSolutionVersionResponse_httpStatus = Lens.lens (\CreateSolutionVersionResponse' {httpStatus} -> httpStatus) (\s@CreateSolutionVersionResponse' {} a -> s {httpStatus = a} :: CreateSolutionVersionResponse)

instance Prelude.NFData CreateSolutionVersionResponse
