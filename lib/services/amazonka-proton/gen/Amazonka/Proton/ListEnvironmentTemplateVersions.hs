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
-- Module      : Amazonka.Proton.ListEnvironmentTemplateVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List major or minor versions of an environment template with detail
-- data.
--
-- This operation returns paginated results.
module Amazonka.Proton.ListEnvironmentTemplateVersions
  ( -- * Creating a Request
    ListEnvironmentTemplateVersions (..),
    newListEnvironmentTemplateVersions,

    -- * Request Lenses
    listEnvironmentTemplateVersions_majorVersion,
    listEnvironmentTemplateVersions_nextToken,
    listEnvironmentTemplateVersions_maxResults,
    listEnvironmentTemplateVersions_templateName,

    -- * Destructuring the Response
    ListEnvironmentTemplateVersionsResponse (..),
    newListEnvironmentTemplateVersionsResponse,

    -- * Response Lenses
    listEnvironmentTemplateVersionsResponse_nextToken,
    listEnvironmentTemplateVersionsResponse_httpStatus,
    listEnvironmentTemplateVersionsResponse_templateVersions,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListEnvironmentTemplateVersions' smart constructor.
data ListEnvironmentTemplateVersions = ListEnvironmentTemplateVersions'
  { -- | To view a list of minor of versions under a major version of an
    -- environment template, include @majorVersion@.
    --
    -- To view a list of major versions of an environment template, /exclude/
    -- @majorVersion@.
    majorVersion :: Prelude.Maybe Prelude.Text,
    -- | A token to indicate the location of the next major or minor version in
    -- the array of major or minor versions of an environment template, after
    -- the list of major or minor versions that was previously requested.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of major or minor versions of an environment template
    -- to list.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the environment template.
    templateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEnvironmentTemplateVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'majorVersion', 'listEnvironmentTemplateVersions_majorVersion' - To view a list of minor of versions under a major version of an
-- environment template, include @majorVersion@.
--
-- To view a list of major versions of an environment template, /exclude/
-- @majorVersion@.
--
-- 'nextToken', 'listEnvironmentTemplateVersions_nextToken' - A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of an environment template, after
-- the list of major or minor versions that was previously requested.
--
-- 'maxResults', 'listEnvironmentTemplateVersions_maxResults' - The maximum number of major or minor versions of an environment template
-- to list.
--
-- 'templateName', 'listEnvironmentTemplateVersions_templateName' - The name of the environment template.
newListEnvironmentTemplateVersions ::
  -- | 'templateName'
  Prelude.Text ->
  ListEnvironmentTemplateVersions
newListEnvironmentTemplateVersions pTemplateName_ =
  ListEnvironmentTemplateVersions'
    { majorVersion =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      templateName = pTemplateName_
    }

-- | To view a list of minor of versions under a major version of an
-- environment template, include @majorVersion@.
--
-- To view a list of major versions of an environment template, /exclude/
-- @majorVersion@.
listEnvironmentTemplateVersions_majorVersion :: Lens.Lens' ListEnvironmentTemplateVersions (Prelude.Maybe Prelude.Text)
listEnvironmentTemplateVersions_majorVersion = Lens.lens (\ListEnvironmentTemplateVersions' {majorVersion} -> majorVersion) (\s@ListEnvironmentTemplateVersions' {} a -> s {majorVersion = a} :: ListEnvironmentTemplateVersions)

-- | A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of an environment template, after
-- the list of major or minor versions that was previously requested.
listEnvironmentTemplateVersions_nextToken :: Lens.Lens' ListEnvironmentTemplateVersions (Prelude.Maybe Prelude.Text)
listEnvironmentTemplateVersions_nextToken = Lens.lens (\ListEnvironmentTemplateVersions' {nextToken} -> nextToken) (\s@ListEnvironmentTemplateVersions' {} a -> s {nextToken = a} :: ListEnvironmentTemplateVersions)

-- | The maximum number of major or minor versions of an environment template
-- to list.
listEnvironmentTemplateVersions_maxResults :: Lens.Lens' ListEnvironmentTemplateVersions (Prelude.Maybe Prelude.Natural)
listEnvironmentTemplateVersions_maxResults = Lens.lens (\ListEnvironmentTemplateVersions' {maxResults} -> maxResults) (\s@ListEnvironmentTemplateVersions' {} a -> s {maxResults = a} :: ListEnvironmentTemplateVersions)

-- | The name of the environment template.
listEnvironmentTemplateVersions_templateName :: Lens.Lens' ListEnvironmentTemplateVersions Prelude.Text
listEnvironmentTemplateVersions_templateName = Lens.lens (\ListEnvironmentTemplateVersions' {templateName} -> templateName) (\s@ListEnvironmentTemplateVersions' {} a -> s {templateName = a} :: ListEnvironmentTemplateVersions)

instance
  Core.AWSPager
    ListEnvironmentTemplateVersions
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listEnvironmentTemplateVersionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listEnvironmentTemplateVersionsResponse_templateVersions
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listEnvironmentTemplateVersions_nextToken
          Lens..~ rs
          Lens.^? listEnvironmentTemplateVersionsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListEnvironmentTemplateVersions
  where
  type
    AWSResponse ListEnvironmentTemplateVersions =
      ListEnvironmentTemplateVersionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEnvironmentTemplateVersionsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "templateVersions"
                            Core..!@ Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    ListEnvironmentTemplateVersions
  where
  hashWithSalt
    salt'
    ListEnvironmentTemplateVersions' {..} =
      salt' `Prelude.hashWithSalt` templateName
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` majorVersion

instance
  Prelude.NFData
    ListEnvironmentTemplateVersions
  where
  rnf ListEnvironmentTemplateVersions' {..} =
    Prelude.rnf majorVersion
      `Prelude.seq` Prelude.rnf templateName
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf nextToken

instance
  Core.ToHeaders
    ListEnvironmentTemplateVersions
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.ListEnvironmentTemplateVersions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListEnvironmentTemplateVersions where
  toJSON ListEnvironmentTemplateVersions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("majorVersion" Core..=) Prelude.<$> majorVersion,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("templateName" Core..= templateName)
          ]
      )

instance Core.ToPath ListEnvironmentTemplateVersions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListEnvironmentTemplateVersions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListEnvironmentTemplateVersionsResponse' smart constructor.
data ListEnvironmentTemplateVersionsResponse = ListEnvironmentTemplateVersionsResponse'
  { -- | A token to indicate the location of the next major or minor version in
    -- the array of major or minor versions of an environment template, after
    -- the list of major or minor versions that was previously requested.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of major or minor versions of an environment template detail
    -- data.
    templateVersions :: [EnvironmentTemplateVersionSummary]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEnvironmentTemplateVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEnvironmentTemplateVersionsResponse_nextToken' - A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of an environment template, after
-- the list of major or minor versions that was previously requested.
--
-- 'httpStatus', 'listEnvironmentTemplateVersionsResponse_httpStatus' - The response's http status code.
--
-- 'templateVersions', 'listEnvironmentTemplateVersionsResponse_templateVersions' - An array of major or minor versions of an environment template detail
-- data.
newListEnvironmentTemplateVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListEnvironmentTemplateVersionsResponse
newListEnvironmentTemplateVersionsResponse
  pHttpStatus_ =
    ListEnvironmentTemplateVersionsResponse'
      { nextToken =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        templateVersions = Prelude.mempty
      }

-- | A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of an environment template, after
-- the list of major or minor versions that was previously requested.
listEnvironmentTemplateVersionsResponse_nextToken :: Lens.Lens' ListEnvironmentTemplateVersionsResponse (Prelude.Maybe Prelude.Text)
listEnvironmentTemplateVersionsResponse_nextToken = Lens.lens (\ListEnvironmentTemplateVersionsResponse' {nextToken} -> nextToken) (\s@ListEnvironmentTemplateVersionsResponse' {} a -> s {nextToken = a} :: ListEnvironmentTemplateVersionsResponse)

-- | The response's http status code.
listEnvironmentTemplateVersionsResponse_httpStatus :: Lens.Lens' ListEnvironmentTemplateVersionsResponse Prelude.Int
listEnvironmentTemplateVersionsResponse_httpStatus = Lens.lens (\ListEnvironmentTemplateVersionsResponse' {httpStatus} -> httpStatus) (\s@ListEnvironmentTemplateVersionsResponse' {} a -> s {httpStatus = a} :: ListEnvironmentTemplateVersionsResponse)

-- | An array of major or minor versions of an environment template detail
-- data.
listEnvironmentTemplateVersionsResponse_templateVersions :: Lens.Lens' ListEnvironmentTemplateVersionsResponse [EnvironmentTemplateVersionSummary]
listEnvironmentTemplateVersionsResponse_templateVersions = Lens.lens (\ListEnvironmentTemplateVersionsResponse' {templateVersions} -> templateVersions) (\s@ListEnvironmentTemplateVersionsResponse' {} a -> s {templateVersions = a} :: ListEnvironmentTemplateVersionsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListEnvironmentTemplateVersionsResponse
  where
  rnf ListEnvironmentTemplateVersionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf templateVersions
      `Prelude.seq` Prelude.rnf httpStatus
