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
-- Module      : Amazonka.LexModels.CreateBotVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of the bot based on the @$LATEST@ version. If the
-- @$LATEST@ version of this resource hasn\'t changed since you created the
-- last version, Amazon Lex doesn\'t create a new version. It returns the
-- last created version.
--
-- You can update only the @$LATEST@ version of the bot. You can\'t update
-- the numbered versions that you create with the @CreateBotVersion@
-- operation.
--
-- When you create the first version of a bot, Amazon Lex sets the version
-- to 1. Subsequent versions increment by 1. For more information, see
-- versioning-intro.
--
-- This operation requires permission for the @lex:CreateBotVersion@
-- action.
module Amazonka.LexModels.CreateBotVersion
  ( -- * Creating a Request
    CreateBotVersion (..),
    newCreateBotVersion,

    -- * Request Lenses
    createBotVersion_checksum,
    createBotVersion_name,

    -- * Destructuring the Response
    CreateBotVersionResponse (..),
    newCreateBotVersionResponse,

    -- * Response Lenses
    createBotVersionResponse_failureReason,
    createBotVersionResponse_status,
    createBotVersionResponse_abortStatement,
    createBotVersionResponse_intents,
    createBotVersionResponse_checksum,
    createBotVersionResponse_enableModelImprovements,
    createBotVersionResponse_detectSentiment,
    createBotVersionResponse_locale,
    createBotVersionResponse_createdDate,
    createBotVersionResponse_name,
    createBotVersionResponse_version,
    createBotVersionResponse_idleSessionTTLInSeconds,
    createBotVersionResponse_clarificationPrompt,
    createBotVersionResponse_voiceId,
    createBotVersionResponse_lastUpdatedDate,
    createBotVersionResponse_childDirected,
    createBotVersionResponse_description,
    createBotVersionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexModels.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateBotVersion' smart constructor.
data CreateBotVersion = CreateBotVersion'
  { -- | Identifies a specific revision of the @$LATEST@ version of the bot. If
    -- you specify a checksum and the @$LATEST@ version of the bot has a
    -- different checksum, a @PreconditionFailedException@ exception is
    -- returned and Amazon Lex doesn\'t publish a new version. If you don\'t
    -- specify a checksum, Amazon Lex publishes the @$LATEST@ version.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | The name of the bot that you want to create a new version of. The name
    -- is case sensitive.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBotVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'checksum', 'createBotVersion_checksum' - Identifies a specific revision of the @$LATEST@ version of the bot. If
-- you specify a checksum and the @$LATEST@ version of the bot has a
-- different checksum, a @PreconditionFailedException@ exception is
-- returned and Amazon Lex doesn\'t publish a new version. If you don\'t
-- specify a checksum, Amazon Lex publishes the @$LATEST@ version.
--
-- 'name', 'createBotVersion_name' - The name of the bot that you want to create a new version of. The name
-- is case sensitive.
newCreateBotVersion ::
  -- | 'name'
  Prelude.Text ->
  CreateBotVersion
newCreateBotVersion pName_ =
  CreateBotVersion'
    { checksum = Prelude.Nothing,
      name = pName_
    }

-- | Identifies a specific revision of the @$LATEST@ version of the bot. If
-- you specify a checksum and the @$LATEST@ version of the bot has a
-- different checksum, a @PreconditionFailedException@ exception is
-- returned and Amazon Lex doesn\'t publish a new version. If you don\'t
-- specify a checksum, Amazon Lex publishes the @$LATEST@ version.
createBotVersion_checksum :: Lens.Lens' CreateBotVersion (Prelude.Maybe Prelude.Text)
createBotVersion_checksum = Lens.lens (\CreateBotVersion' {checksum} -> checksum) (\s@CreateBotVersion' {} a -> s {checksum = a} :: CreateBotVersion)

-- | The name of the bot that you want to create a new version of. The name
-- is case sensitive.
createBotVersion_name :: Lens.Lens' CreateBotVersion Prelude.Text
createBotVersion_name = Lens.lens (\CreateBotVersion' {name} -> name) (\s@CreateBotVersion' {} a -> s {name = a} :: CreateBotVersion)

instance Core.AWSRequest CreateBotVersion where
  type
    AWSResponse CreateBotVersion =
      CreateBotVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBotVersionResponse'
            Prelude.<$> (x Core..?> "failureReason")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "abortStatement")
            Prelude.<*> (x Core..?> "intents" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "checksum")
            Prelude.<*> (x Core..?> "enableModelImprovements")
            Prelude.<*> (x Core..?> "detectSentiment")
            Prelude.<*> (x Core..?> "locale")
            Prelude.<*> (x Core..?> "createdDate")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (x Core..?> "idleSessionTTLInSeconds")
            Prelude.<*> (x Core..?> "clarificationPrompt")
            Prelude.<*> (x Core..?> "voiceId")
            Prelude.<*> (x Core..?> "lastUpdatedDate")
            Prelude.<*> (x Core..?> "childDirected")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateBotVersion where
  hashWithSalt salt' CreateBotVersion' {..} =
    salt' `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` checksum

instance Prelude.NFData CreateBotVersion where
  rnf CreateBotVersion' {..} =
    Prelude.rnf checksum `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateBotVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBotVersion where
  toJSON CreateBotVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [("checksum" Core..=) Prelude.<$> checksum]
      )

instance Core.ToPath CreateBotVersion where
  toPath CreateBotVersion' {..} =
    Prelude.mconcat
      ["/bots/", Core.toBS name, "/versions"]

instance Core.ToQuery CreateBotVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBotVersionResponse' smart constructor.
data CreateBotVersionResponse = CreateBotVersionResponse'
  { -- | If @status@ is @FAILED@, Amazon Lex provides the reason that it failed
    -- to build the bot.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | When you send a request to create or update a bot, Amazon Lex sets the
    -- @status@ response element to @BUILDING@. After Amazon Lex builds the
    -- bot, it sets @status@ to @READY@. If Amazon Lex can\'t build the bot, it
    -- sets @status@ to @FAILED@. Amazon Lex returns the reason for the failure
    -- in the @failureReason@ response element.
    status :: Prelude.Maybe LexStatus,
    -- | The message that Amazon Lex uses to cancel a conversation. For more
    -- information, see PutBot.
    abortStatement :: Prelude.Maybe Statement,
    -- | An array of @Intent@ objects. For more information, see PutBot.
    intents :: Prelude.Maybe [Intent],
    -- | Checksum identifying the version of the bot that was created.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the bot uses accuracy improvements. @true@ indicates
    -- that the bot is using the improvements, otherwise, @false@.
    enableModelImprovements :: Prelude.Maybe Prelude.Bool,
    -- | Indicates whether utterances entered by the user should be sent to
    -- Amazon Comprehend for sentiment analysis.
    detectSentiment :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the target locale for the bot.
    locale :: Prelude.Maybe Locale,
    -- | The date when the bot version was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | The name of the bot.
    name :: Prelude.Maybe Prelude.Text,
    -- | The version of the bot.
    version :: Prelude.Maybe Prelude.Text,
    -- | The maximum time in seconds that Amazon Lex retains the data gathered in
    -- a conversation. For more information, see PutBot.
    idleSessionTTLInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | The message that Amazon Lex uses when it doesn\'t understand the user\'s
    -- request. For more information, see PutBot.
    clarificationPrompt :: Prelude.Maybe Prompt,
    -- | The Amazon Polly voice ID that Amazon Lex uses for voice interactions
    -- with the user.
    voiceId :: Prelude.Maybe Prelude.Text,
    -- | The date when the @$LATEST@ version of this bot was updated.
    lastUpdatedDate :: Prelude.Maybe Core.POSIX,
    -- | For each Amazon Lex bot created with the Amazon Lex Model Building
    -- Service, you must specify whether your use of Amazon Lex is related to a
    -- website, program, or other application that is directed or targeted, in
    -- whole or in part, to children under age 13 and subject to the
    -- Children\'s Online Privacy Protection Act (COPPA) by specifying @true@
    -- or @false@ in the @childDirected@ field. By specifying @true@ in the
    -- @childDirected@ field, you confirm that your use of Amazon Lex __is__
    -- related to a website, program, or other application that is directed or
    -- targeted, in whole or in part, to children under age 13 and subject to
    -- COPPA. By specifying @false@ in the @childDirected@ field, you confirm
    -- that your use of Amazon Lex __is not__ related to a website, program, or
    -- other application that is directed or targeted, in whole or in part, to
    -- children under age 13 and subject to COPPA. You may not specify a
    -- default value for the @childDirected@ field that does not accurately
    -- reflect whether your use of Amazon Lex is related to a website, program,
    -- or other application that is directed or targeted, in whole or in part,
    -- to children under age 13 and subject to COPPA.
    --
    -- If your use of Amazon Lex relates to a website, program, or other
    -- application that is directed in whole or in part, to children under age
    -- 13, you must obtain any required verifiable parental consent under
    -- COPPA. For information regarding the use of Amazon Lex in connection
    -- with websites, programs, or other applications that are directed or
    -- targeted, in whole or in part, to children under age 13, see the
    -- <https://aws.amazon.com/lex/faqs#data-security Amazon Lex FAQ.>
    childDirected :: Prelude.Maybe Prelude.Bool,
    -- | A description of the bot.
    description :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBotVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failureReason', 'createBotVersionResponse_failureReason' - If @status@ is @FAILED@, Amazon Lex provides the reason that it failed
-- to build the bot.
--
-- 'status', 'createBotVersionResponse_status' - When you send a request to create or update a bot, Amazon Lex sets the
-- @status@ response element to @BUILDING@. After Amazon Lex builds the
-- bot, it sets @status@ to @READY@. If Amazon Lex can\'t build the bot, it
-- sets @status@ to @FAILED@. Amazon Lex returns the reason for the failure
-- in the @failureReason@ response element.
--
-- 'abortStatement', 'createBotVersionResponse_abortStatement' - The message that Amazon Lex uses to cancel a conversation. For more
-- information, see PutBot.
--
-- 'intents', 'createBotVersionResponse_intents' - An array of @Intent@ objects. For more information, see PutBot.
--
-- 'checksum', 'createBotVersionResponse_checksum' - Checksum identifying the version of the bot that was created.
--
-- 'enableModelImprovements', 'createBotVersionResponse_enableModelImprovements' - Indicates whether the bot uses accuracy improvements. @true@ indicates
-- that the bot is using the improvements, otherwise, @false@.
--
-- 'detectSentiment', 'createBotVersionResponse_detectSentiment' - Indicates whether utterances entered by the user should be sent to
-- Amazon Comprehend for sentiment analysis.
--
-- 'locale', 'createBotVersionResponse_locale' - Specifies the target locale for the bot.
--
-- 'createdDate', 'createBotVersionResponse_createdDate' - The date when the bot version was created.
--
-- 'name', 'createBotVersionResponse_name' - The name of the bot.
--
-- 'version', 'createBotVersionResponse_version' - The version of the bot.
--
-- 'idleSessionTTLInSeconds', 'createBotVersionResponse_idleSessionTTLInSeconds' - The maximum time in seconds that Amazon Lex retains the data gathered in
-- a conversation. For more information, see PutBot.
--
-- 'clarificationPrompt', 'createBotVersionResponse_clarificationPrompt' - The message that Amazon Lex uses when it doesn\'t understand the user\'s
-- request. For more information, see PutBot.
--
-- 'voiceId', 'createBotVersionResponse_voiceId' - The Amazon Polly voice ID that Amazon Lex uses for voice interactions
-- with the user.
--
-- 'lastUpdatedDate', 'createBotVersionResponse_lastUpdatedDate' - The date when the @$LATEST@ version of this bot was updated.
--
-- 'childDirected', 'createBotVersionResponse_childDirected' - For each Amazon Lex bot created with the Amazon Lex Model Building
-- Service, you must specify whether your use of Amazon Lex is related to a
-- website, program, or other application that is directed or targeted, in
-- whole or in part, to children under age 13 and subject to the
-- Children\'s Online Privacy Protection Act (COPPA) by specifying @true@
-- or @false@ in the @childDirected@ field. By specifying @true@ in the
-- @childDirected@ field, you confirm that your use of Amazon Lex __is__
-- related to a website, program, or other application that is directed or
-- targeted, in whole or in part, to children under age 13 and subject to
-- COPPA. By specifying @false@ in the @childDirected@ field, you confirm
-- that your use of Amazon Lex __is not__ related to a website, program, or
-- other application that is directed or targeted, in whole or in part, to
-- children under age 13 and subject to COPPA. You may not specify a
-- default value for the @childDirected@ field that does not accurately
-- reflect whether your use of Amazon Lex is related to a website, program,
-- or other application that is directed or targeted, in whole or in part,
-- to children under age 13 and subject to COPPA.
--
-- If your use of Amazon Lex relates to a website, program, or other
-- application that is directed in whole or in part, to children under age
-- 13, you must obtain any required verifiable parental consent under
-- COPPA. For information regarding the use of Amazon Lex in connection
-- with websites, programs, or other applications that are directed or
-- targeted, in whole or in part, to children under age 13, see the
-- <https://aws.amazon.com/lex/faqs#data-security Amazon Lex FAQ.>
--
-- 'description', 'createBotVersionResponse_description' - A description of the bot.
--
-- 'httpStatus', 'createBotVersionResponse_httpStatus' - The response's http status code.
newCreateBotVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateBotVersionResponse
newCreateBotVersionResponse pHttpStatus_ =
  CreateBotVersionResponse'
    { failureReason =
        Prelude.Nothing,
      status = Prelude.Nothing,
      abortStatement = Prelude.Nothing,
      intents = Prelude.Nothing,
      checksum = Prelude.Nothing,
      enableModelImprovements = Prelude.Nothing,
      detectSentiment = Prelude.Nothing,
      locale = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      name = Prelude.Nothing,
      version = Prelude.Nothing,
      idleSessionTTLInSeconds = Prelude.Nothing,
      clarificationPrompt = Prelude.Nothing,
      voiceId = Prelude.Nothing,
      lastUpdatedDate = Prelude.Nothing,
      childDirected = Prelude.Nothing,
      description = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If @status@ is @FAILED@, Amazon Lex provides the reason that it failed
-- to build the bot.
createBotVersionResponse_failureReason :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Text)
createBotVersionResponse_failureReason = Lens.lens (\CreateBotVersionResponse' {failureReason} -> failureReason) (\s@CreateBotVersionResponse' {} a -> s {failureReason = a} :: CreateBotVersionResponse)

-- | When you send a request to create or update a bot, Amazon Lex sets the
-- @status@ response element to @BUILDING@. After Amazon Lex builds the
-- bot, it sets @status@ to @READY@. If Amazon Lex can\'t build the bot, it
-- sets @status@ to @FAILED@. Amazon Lex returns the reason for the failure
-- in the @failureReason@ response element.
createBotVersionResponse_status :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe LexStatus)
createBotVersionResponse_status = Lens.lens (\CreateBotVersionResponse' {status} -> status) (\s@CreateBotVersionResponse' {} a -> s {status = a} :: CreateBotVersionResponse)

-- | The message that Amazon Lex uses to cancel a conversation. For more
-- information, see PutBot.
createBotVersionResponse_abortStatement :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Statement)
createBotVersionResponse_abortStatement = Lens.lens (\CreateBotVersionResponse' {abortStatement} -> abortStatement) (\s@CreateBotVersionResponse' {} a -> s {abortStatement = a} :: CreateBotVersionResponse)

-- | An array of @Intent@ objects. For more information, see PutBot.
createBotVersionResponse_intents :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe [Intent])
createBotVersionResponse_intents = Lens.lens (\CreateBotVersionResponse' {intents} -> intents) (\s@CreateBotVersionResponse' {} a -> s {intents = a} :: CreateBotVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | Checksum identifying the version of the bot that was created.
createBotVersionResponse_checksum :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Text)
createBotVersionResponse_checksum = Lens.lens (\CreateBotVersionResponse' {checksum} -> checksum) (\s@CreateBotVersionResponse' {} a -> s {checksum = a} :: CreateBotVersionResponse)

-- | Indicates whether the bot uses accuracy improvements. @true@ indicates
-- that the bot is using the improvements, otherwise, @false@.
createBotVersionResponse_enableModelImprovements :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Bool)
createBotVersionResponse_enableModelImprovements = Lens.lens (\CreateBotVersionResponse' {enableModelImprovements} -> enableModelImprovements) (\s@CreateBotVersionResponse' {} a -> s {enableModelImprovements = a} :: CreateBotVersionResponse)

-- | Indicates whether utterances entered by the user should be sent to
-- Amazon Comprehend for sentiment analysis.
createBotVersionResponse_detectSentiment :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Bool)
createBotVersionResponse_detectSentiment = Lens.lens (\CreateBotVersionResponse' {detectSentiment} -> detectSentiment) (\s@CreateBotVersionResponse' {} a -> s {detectSentiment = a} :: CreateBotVersionResponse)

-- | Specifies the target locale for the bot.
createBotVersionResponse_locale :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Locale)
createBotVersionResponse_locale = Lens.lens (\CreateBotVersionResponse' {locale} -> locale) (\s@CreateBotVersionResponse' {} a -> s {locale = a} :: CreateBotVersionResponse)

-- | The date when the bot version was created.
createBotVersionResponse_createdDate :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.UTCTime)
createBotVersionResponse_createdDate = Lens.lens (\CreateBotVersionResponse' {createdDate} -> createdDate) (\s@CreateBotVersionResponse' {} a -> s {createdDate = a} :: CreateBotVersionResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the bot.
createBotVersionResponse_name :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Text)
createBotVersionResponse_name = Lens.lens (\CreateBotVersionResponse' {name} -> name) (\s@CreateBotVersionResponse' {} a -> s {name = a} :: CreateBotVersionResponse)

-- | The version of the bot.
createBotVersionResponse_version :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Text)
createBotVersionResponse_version = Lens.lens (\CreateBotVersionResponse' {version} -> version) (\s@CreateBotVersionResponse' {} a -> s {version = a} :: CreateBotVersionResponse)

-- | The maximum time in seconds that Amazon Lex retains the data gathered in
-- a conversation. For more information, see PutBot.
createBotVersionResponse_idleSessionTTLInSeconds :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Natural)
createBotVersionResponse_idleSessionTTLInSeconds = Lens.lens (\CreateBotVersionResponse' {idleSessionTTLInSeconds} -> idleSessionTTLInSeconds) (\s@CreateBotVersionResponse' {} a -> s {idleSessionTTLInSeconds = a} :: CreateBotVersionResponse)

-- | The message that Amazon Lex uses when it doesn\'t understand the user\'s
-- request. For more information, see PutBot.
createBotVersionResponse_clarificationPrompt :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prompt)
createBotVersionResponse_clarificationPrompt = Lens.lens (\CreateBotVersionResponse' {clarificationPrompt} -> clarificationPrompt) (\s@CreateBotVersionResponse' {} a -> s {clarificationPrompt = a} :: CreateBotVersionResponse)

-- | The Amazon Polly voice ID that Amazon Lex uses for voice interactions
-- with the user.
createBotVersionResponse_voiceId :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Text)
createBotVersionResponse_voiceId = Lens.lens (\CreateBotVersionResponse' {voiceId} -> voiceId) (\s@CreateBotVersionResponse' {} a -> s {voiceId = a} :: CreateBotVersionResponse)

-- | The date when the @$LATEST@ version of this bot was updated.
createBotVersionResponse_lastUpdatedDate :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.UTCTime)
createBotVersionResponse_lastUpdatedDate = Lens.lens (\CreateBotVersionResponse' {lastUpdatedDate} -> lastUpdatedDate) (\s@CreateBotVersionResponse' {} a -> s {lastUpdatedDate = a} :: CreateBotVersionResponse) Prelude.. Lens.mapping Core._Time

-- | For each Amazon Lex bot created with the Amazon Lex Model Building
-- Service, you must specify whether your use of Amazon Lex is related to a
-- website, program, or other application that is directed or targeted, in
-- whole or in part, to children under age 13 and subject to the
-- Children\'s Online Privacy Protection Act (COPPA) by specifying @true@
-- or @false@ in the @childDirected@ field. By specifying @true@ in the
-- @childDirected@ field, you confirm that your use of Amazon Lex __is__
-- related to a website, program, or other application that is directed or
-- targeted, in whole or in part, to children under age 13 and subject to
-- COPPA. By specifying @false@ in the @childDirected@ field, you confirm
-- that your use of Amazon Lex __is not__ related to a website, program, or
-- other application that is directed or targeted, in whole or in part, to
-- children under age 13 and subject to COPPA. You may not specify a
-- default value for the @childDirected@ field that does not accurately
-- reflect whether your use of Amazon Lex is related to a website, program,
-- or other application that is directed or targeted, in whole or in part,
-- to children under age 13 and subject to COPPA.
--
-- If your use of Amazon Lex relates to a website, program, or other
-- application that is directed in whole or in part, to children under age
-- 13, you must obtain any required verifiable parental consent under
-- COPPA. For information regarding the use of Amazon Lex in connection
-- with websites, programs, or other applications that are directed or
-- targeted, in whole or in part, to children under age 13, see the
-- <https://aws.amazon.com/lex/faqs#data-security Amazon Lex FAQ.>
createBotVersionResponse_childDirected :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Bool)
createBotVersionResponse_childDirected = Lens.lens (\CreateBotVersionResponse' {childDirected} -> childDirected) (\s@CreateBotVersionResponse' {} a -> s {childDirected = a} :: CreateBotVersionResponse)

-- | A description of the bot.
createBotVersionResponse_description :: Lens.Lens' CreateBotVersionResponse (Prelude.Maybe Prelude.Text)
createBotVersionResponse_description = Lens.lens (\CreateBotVersionResponse' {description} -> description) (\s@CreateBotVersionResponse' {} a -> s {description = a} :: CreateBotVersionResponse)

-- | The response's http status code.
createBotVersionResponse_httpStatus :: Lens.Lens' CreateBotVersionResponse Prelude.Int
createBotVersionResponse_httpStatus = Lens.lens (\CreateBotVersionResponse' {httpStatus} -> httpStatus) (\s@CreateBotVersionResponse' {} a -> s {httpStatus = a} :: CreateBotVersionResponse)

instance Prelude.NFData CreateBotVersionResponse where
  rnf CreateBotVersionResponse' {..} =
    Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf childDirected
      `Prelude.seq` Prelude.rnf lastUpdatedDate
      `Prelude.seq` Prelude.rnf voiceId
      `Prelude.seq` Prelude.rnf clarificationPrompt
      `Prelude.seq` Prelude.rnf idleSessionTTLInSeconds
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf locale
      `Prelude.seq` Prelude.rnf detectSentiment
      `Prelude.seq` Prelude.rnf enableModelImprovements
      `Prelude.seq` Prelude.rnf checksum
      `Prelude.seq` Prelude.rnf intents
      `Prelude.seq` Prelude.rnf abortStatement
      `Prelude.seq` Prelude.rnf status
