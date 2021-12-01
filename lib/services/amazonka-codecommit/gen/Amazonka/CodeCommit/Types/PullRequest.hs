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
-- Module      : Amazonka.CodeCommit.Types.PullRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeCommit.Types.PullRequest where

import Amazonka.CodeCommit.Types.ApprovalRule
import Amazonka.CodeCommit.Types.PullRequestStatusEnum
import Amazonka.CodeCommit.Types.PullRequestTarget
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Returns information about a pull request.
--
-- /See:/ 'newPullRequest' smart constructor.
data PullRequest = PullRequest'
  { -- | The approval rules applied to the pull request.
    approvalRules :: Prelude.Maybe [ApprovalRule],
    -- | The Amazon Resource Name (ARN) of the user who created the pull request.
    authorArn :: Prelude.Maybe Prelude.Text,
    -- | The system-generated ID of the pull request.
    pullRequestId :: Prelude.Maybe Prelude.Text,
    -- | The date and time the pull request was originally created, in timestamp
    -- format.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The status of the pull request. Pull request status can only change from
    -- @OPEN@ to @CLOSED@.
    pullRequestStatus :: Prelude.Maybe PullRequestStatusEnum,
    -- | The user-defined title of the pull request. This title is displayed in
    -- the list of pull requests to other repository users.
    title :: Prelude.Maybe Prelude.Text,
    -- | A unique, client-generated idempotency token that, when provided in a
    -- request, ensures the request cannot be repeated with a changed
    -- parameter. If a request is received with the same parameters and a token
    -- is included, the request returns information about the initial request
    -- that used that token.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The day and time of the last user or system activity on the pull
    -- request, in timestamp format.
    lastActivityDate :: Prelude.Maybe Core.POSIX,
    -- | The system-generated revision ID for the pull request.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The targets of the pull request, including the source branch and
    -- destination branch for the pull request.
    pullRequestTargets :: Prelude.Maybe [PullRequestTarget],
    -- | The user-defined description of the pull request. This description can
    -- be used to clarify what should be reviewed and other details of the
    -- request.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PullRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approvalRules', 'pullRequest_approvalRules' - The approval rules applied to the pull request.
--
-- 'authorArn', 'pullRequest_authorArn' - The Amazon Resource Name (ARN) of the user who created the pull request.
--
-- 'pullRequestId', 'pullRequest_pullRequestId' - The system-generated ID of the pull request.
--
-- 'creationDate', 'pullRequest_creationDate' - The date and time the pull request was originally created, in timestamp
-- format.
--
-- 'pullRequestStatus', 'pullRequest_pullRequestStatus' - The status of the pull request. Pull request status can only change from
-- @OPEN@ to @CLOSED@.
--
-- 'title', 'pullRequest_title' - The user-defined title of the pull request. This title is displayed in
-- the list of pull requests to other repository users.
--
-- 'clientRequestToken', 'pullRequest_clientRequestToken' - A unique, client-generated idempotency token that, when provided in a
-- request, ensures the request cannot be repeated with a changed
-- parameter. If a request is received with the same parameters and a token
-- is included, the request returns information about the initial request
-- that used that token.
--
-- 'lastActivityDate', 'pullRequest_lastActivityDate' - The day and time of the last user or system activity on the pull
-- request, in timestamp format.
--
-- 'revisionId', 'pullRequest_revisionId' - The system-generated revision ID for the pull request.
--
-- 'pullRequestTargets', 'pullRequest_pullRequestTargets' - The targets of the pull request, including the source branch and
-- destination branch for the pull request.
--
-- 'description', 'pullRequest_description' - The user-defined description of the pull request. This description can
-- be used to clarify what should be reviewed and other details of the
-- request.
newPullRequest ::
  PullRequest
newPullRequest =
  PullRequest'
    { approvalRules = Prelude.Nothing,
      authorArn = Prelude.Nothing,
      pullRequestId = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      pullRequestStatus = Prelude.Nothing,
      title = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      lastActivityDate = Prelude.Nothing,
      revisionId = Prelude.Nothing,
      pullRequestTargets = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The approval rules applied to the pull request.
pullRequest_approvalRules :: Lens.Lens' PullRequest (Prelude.Maybe [ApprovalRule])
pullRequest_approvalRules = Lens.lens (\PullRequest' {approvalRules} -> approvalRules) (\s@PullRequest' {} a -> s {approvalRules = a} :: PullRequest) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the user who created the pull request.
pullRequest_authorArn :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.Text)
pullRequest_authorArn = Lens.lens (\PullRequest' {authorArn} -> authorArn) (\s@PullRequest' {} a -> s {authorArn = a} :: PullRequest)

-- | The system-generated ID of the pull request.
pullRequest_pullRequestId :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.Text)
pullRequest_pullRequestId = Lens.lens (\PullRequest' {pullRequestId} -> pullRequestId) (\s@PullRequest' {} a -> s {pullRequestId = a} :: PullRequest)

-- | The date and time the pull request was originally created, in timestamp
-- format.
pullRequest_creationDate :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.UTCTime)
pullRequest_creationDate = Lens.lens (\PullRequest' {creationDate} -> creationDate) (\s@PullRequest' {} a -> s {creationDate = a} :: PullRequest) Prelude.. Lens.mapping Core._Time

-- | The status of the pull request. Pull request status can only change from
-- @OPEN@ to @CLOSED@.
pullRequest_pullRequestStatus :: Lens.Lens' PullRequest (Prelude.Maybe PullRequestStatusEnum)
pullRequest_pullRequestStatus = Lens.lens (\PullRequest' {pullRequestStatus} -> pullRequestStatus) (\s@PullRequest' {} a -> s {pullRequestStatus = a} :: PullRequest)

-- | The user-defined title of the pull request. This title is displayed in
-- the list of pull requests to other repository users.
pullRequest_title :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.Text)
pullRequest_title = Lens.lens (\PullRequest' {title} -> title) (\s@PullRequest' {} a -> s {title = a} :: PullRequest)

-- | A unique, client-generated idempotency token that, when provided in a
-- request, ensures the request cannot be repeated with a changed
-- parameter. If a request is received with the same parameters and a token
-- is included, the request returns information about the initial request
-- that used that token.
pullRequest_clientRequestToken :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.Text)
pullRequest_clientRequestToken = Lens.lens (\PullRequest' {clientRequestToken} -> clientRequestToken) (\s@PullRequest' {} a -> s {clientRequestToken = a} :: PullRequest)

-- | The day and time of the last user or system activity on the pull
-- request, in timestamp format.
pullRequest_lastActivityDate :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.UTCTime)
pullRequest_lastActivityDate = Lens.lens (\PullRequest' {lastActivityDate} -> lastActivityDate) (\s@PullRequest' {} a -> s {lastActivityDate = a} :: PullRequest) Prelude.. Lens.mapping Core._Time

-- | The system-generated revision ID for the pull request.
pullRequest_revisionId :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.Text)
pullRequest_revisionId = Lens.lens (\PullRequest' {revisionId} -> revisionId) (\s@PullRequest' {} a -> s {revisionId = a} :: PullRequest)

-- | The targets of the pull request, including the source branch and
-- destination branch for the pull request.
pullRequest_pullRequestTargets :: Lens.Lens' PullRequest (Prelude.Maybe [PullRequestTarget])
pullRequest_pullRequestTargets = Lens.lens (\PullRequest' {pullRequestTargets} -> pullRequestTargets) (\s@PullRequest' {} a -> s {pullRequestTargets = a} :: PullRequest) Prelude.. Lens.mapping Lens.coerced

-- | The user-defined description of the pull request. This description can
-- be used to clarify what should be reviewed and other details of the
-- request.
pullRequest_description :: Lens.Lens' PullRequest (Prelude.Maybe Prelude.Text)
pullRequest_description = Lens.lens (\PullRequest' {description} -> description) (\s@PullRequest' {} a -> s {description = a} :: PullRequest)

instance Core.FromJSON PullRequest where
  parseJSON =
    Core.withObject
      "PullRequest"
      ( \x ->
          PullRequest'
            Prelude.<$> (x Core..:? "approvalRules" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "authorArn")
            Prelude.<*> (x Core..:? "pullRequestId")
            Prelude.<*> (x Core..:? "creationDate")
            Prelude.<*> (x Core..:? "pullRequestStatus")
            Prelude.<*> (x Core..:? "title")
            Prelude.<*> (x Core..:? "clientRequestToken")
            Prelude.<*> (x Core..:? "lastActivityDate")
            Prelude.<*> (x Core..:? "revisionId")
            Prelude.<*> ( x Core..:? "pullRequestTargets"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "description")
      )

instance Prelude.Hashable PullRequest where
  hashWithSalt salt' PullRequest' {..} =
    salt' `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` pullRequestTargets
      `Prelude.hashWithSalt` revisionId
      `Prelude.hashWithSalt` lastActivityDate
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` title
      `Prelude.hashWithSalt` pullRequestStatus
      `Prelude.hashWithSalt` creationDate
      `Prelude.hashWithSalt` pullRequestId
      `Prelude.hashWithSalt` authorArn
      `Prelude.hashWithSalt` approvalRules

instance Prelude.NFData PullRequest where
  rnf PullRequest' {..} =
    Prelude.rnf approvalRules
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf pullRequestTargets
      `Prelude.seq` Prelude.rnf revisionId
      `Prelude.seq` Prelude.rnf lastActivityDate
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf title
      `Prelude.seq` Prelude.rnf pullRequestStatus
      `Prelude.seq` Prelude.rnf creationDate
      `Prelude.seq` Prelude.rnf pullRequestId
      `Prelude.seq` Prelude.rnf authorArn
