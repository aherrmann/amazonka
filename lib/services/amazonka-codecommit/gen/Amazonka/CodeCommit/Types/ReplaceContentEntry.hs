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
-- Module      : Amazonka.CodeCommit.Types.ReplaceContentEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeCommit.Types.ReplaceContentEntry where

import Amazonka.CodeCommit.Types.FileModeTypeEnum
import Amazonka.CodeCommit.Types.ReplacementTypeEnum
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a replacement content entry in the conflict of a merge
-- or pull request operation.
--
-- /See:/ 'newReplaceContentEntry' smart constructor.
data ReplaceContentEntry = ReplaceContentEntry'
  { -- | The file mode to apply during conflict resoltion.
    fileMode :: Prelude.Maybe FileModeTypeEnum,
    -- | The base-64 encoded content to use when the replacement type is
    -- USE_NEW_CONTENT.
    content :: Prelude.Maybe Core.Base64,
    -- | The path of the conflicting file.
    filePath :: Prelude.Text,
    -- | The replacement type to use when determining how to resolve the
    -- conflict.
    replacementType :: ReplacementTypeEnum
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplaceContentEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fileMode', 'replaceContentEntry_fileMode' - The file mode to apply during conflict resoltion.
--
-- 'content', 'replaceContentEntry_content' - The base-64 encoded content to use when the replacement type is
-- USE_NEW_CONTENT.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'filePath', 'replaceContentEntry_filePath' - The path of the conflicting file.
--
-- 'replacementType', 'replaceContentEntry_replacementType' - The replacement type to use when determining how to resolve the
-- conflict.
newReplaceContentEntry ::
  -- | 'filePath'
  Prelude.Text ->
  -- | 'replacementType'
  ReplacementTypeEnum ->
  ReplaceContentEntry
newReplaceContentEntry pFilePath_ pReplacementType_ =
  ReplaceContentEntry'
    { fileMode = Prelude.Nothing,
      content = Prelude.Nothing,
      filePath = pFilePath_,
      replacementType = pReplacementType_
    }

-- | The file mode to apply during conflict resoltion.
replaceContentEntry_fileMode :: Lens.Lens' ReplaceContentEntry (Prelude.Maybe FileModeTypeEnum)
replaceContentEntry_fileMode = Lens.lens (\ReplaceContentEntry' {fileMode} -> fileMode) (\s@ReplaceContentEntry' {} a -> s {fileMode = a} :: ReplaceContentEntry)

-- | The base-64 encoded content to use when the replacement type is
-- USE_NEW_CONTENT.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
replaceContentEntry_content :: Lens.Lens' ReplaceContentEntry (Prelude.Maybe Prelude.ByteString)
replaceContentEntry_content = Lens.lens (\ReplaceContentEntry' {content} -> content) (\s@ReplaceContentEntry' {} a -> s {content = a} :: ReplaceContentEntry) Prelude.. Lens.mapping Core._Base64

-- | The path of the conflicting file.
replaceContentEntry_filePath :: Lens.Lens' ReplaceContentEntry Prelude.Text
replaceContentEntry_filePath = Lens.lens (\ReplaceContentEntry' {filePath} -> filePath) (\s@ReplaceContentEntry' {} a -> s {filePath = a} :: ReplaceContentEntry)

-- | The replacement type to use when determining how to resolve the
-- conflict.
replaceContentEntry_replacementType :: Lens.Lens' ReplaceContentEntry ReplacementTypeEnum
replaceContentEntry_replacementType = Lens.lens (\ReplaceContentEntry' {replacementType} -> replacementType) (\s@ReplaceContentEntry' {} a -> s {replacementType = a} :: ReplaceContentEntry)

instance Prelude.Hashable ReplaceContentEntry where
  hashWithSalt salt' ReplaceContentEntry' {..} =
    salt' `Prelude.hashWithSalt` replacementType
      `Prelude.hashWithSalt` filePath
      `Prelude.hashWithSalt` content
      `Prelude.hashWithSalt` fileMode

instance Prelude.NFData ReplaceContentEntry where
  rnf ReplaceContentEntry' {..} =
    Prelude.rnf fileMode
      `Prelude.seq` Prelude.rnf replacementType
      `Prelude.seq` Prelude.rnf filePath
      `Prelude.seq` Prelude.rnf content

instance Core.ToJSON ReplaceContentEntry where
  toJSON ReplaceContentEntry' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("fileMode" Core..=) Prelude.<$> fileMode,
            ("content" Core..=) Prelude.<$> content,
            Prelude.Just ("filePath" Core..= filePath),
            Prelude.Just
              ("replacementType" Core..= replacementType)
          ]
      )
