{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ThirdPartyJobData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ThirdPartyJobData
  ( ThirdPartyJobData (..),

    -- * Smart constructor
    mkThirdPartyJobData,

    -- * Lenses
    tpjdContinuationToken,
    tpjdOutputArtifacts,
    tpjdArtifactCredentials,
    tpjdPipelineContext,
    tpjdEncryptionKey,
    tpjdActionTypeId,
    tpjdInputArtifacts,
    tpjdActionConfiguration,
  )
where

import Network.AWS.CodePipeline.Types.AWSSessionCredentials
import Network.AWS.CodePipeline.Types.ActionConfiguration
import Network.AWS.CodePipeline.Types.ActionTypeId
import Network.AWS.CodePipeline.Types.Artifact
import Network.AWS.CodePipeline.Types.EncryptionKey
import Network.AWS.CodePipeline.Types.PipelineContext
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents information about the job data for a partner action.
--
-- /See:/ 'mkThirdPartyJobData' smart constructor.
data ThirdPartyJobData = ThirdPartyJobData'
  { -- | A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires to continue the job asynchronously.
    continuationToken :: Lude.Maybe Lude.Text,
    -- | The name of the artifact that is the result of the action, if any. This name might be system-generated, such as "MyBuiltApp", or it might be defined by the user when the action is created.
    outputArtifacts :: Lude.Maybe [Artifact],
    -- | Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifact for the pipeline in AWS CodePipeline.
    artifactCredentials :: Lude.Maybe AWSSessionCredentials,
    -- | Represents information about a pipeline to a job worker.
    pipelineContext :: Lude.Maybe PipelineContext,
    -- | The encryption key used to encrypt and decrypt data in the artifact store for the pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and might not be present.
    encryptionKey :: Lude.Maybe EncryptionKey,
    -- | Represents information about an action type.
    actionTypeId :: Lude.Maybe ActionTypeId,
    -- | The name of the artifact that is worked on by the action, if any. This name might be system-generated, such as "MyApp", or it might be defined by the user when the action is created. The input artifact name must match the name of an output artifact generated by an action in an earlier action or stage of the pipeline.
    inputArtifacts :: Lude.Maybe [Artifact],
    -- | Represents information about an action configuration.
    actionConfiguration :: Lude.Maybe ActionConfiguration
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ThirdPartyJobData' with the minimum fields required to make a request.
--
-- * 'continuationToken' - A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires to continue the job asynchronously.
-- * 'outputArtifacts' - The name of the artifact that is the result of the action, if any. This name might be system-generated, such as "MyBuiltApp", or it might be defined by the user when the action is created.
-- * 'artifactCredentials' - Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifact for the pipeline in AWS CodePipeline.
-- * 'pipelineContext' - Represents information about a pipeline to a job worker.
-- * 'encryptionKey' - The encryption key used to encrypt and decrypt data in the artifact store for the pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and might not be present.
-- * 'actionTypeId' - Represents information about an action type.
-- * 'inputArtifacts' - The name of the artifact that is worked on by the action, if any. This name might be system-generated, such as "MyApp", or it might be defined by the user when the action is created. The input artifact name must match the name of an output artifact generated by an action in an earlier action or stage of the pipeline.
-- * 'actionConfiguration' - Represents information about an action configuration.
mkThirdPartyJobData ::
  ThirdPartyJobData
mkThirdPartyJobData =
  ThirdPartyJobData'
    { continuationToken = Lude.Nothing,
      outputArtifacts = Lude.Nothing,
      artifactCredentials = Lude.Nothing,
      pipelineContext = Lude.Nothing,
      encryptionKey = Lude.Nothing,
      actionTypeId = Lude.Nothing,
      inputArtifacts = Lude.Nothing,
      actionConfiguration = Lude.Nothing
    }

-- | A system-generated token, such as a AWS CodeDeploy deployment ID, that a job requires to continue the job asynchronously.
--
-- /Note:/ Consider using 'continuationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdContinuationToken :: Lens.Lens' ThirdPartyJobData (Lude.Maybe Lude.Text)
tpjdContinuationToken = Lens.lens (continuationToken :: ThirdPartyJobData -> Lude.Maybe Lude.Text) (\s a -> s {continuationToken = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdContinuationToken "Use generic-lens or generic-optics with 'continuationToken' instead." #-}

-- | The name of the artifact that is the result of the action, if any. This name might be system-generated, such as "MyBuiltApp", or it might be defined by the user when the action is created.
--
-- /Note:/ Consider using 'outputArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdOutputArtifacts :: Lens.Lens' ThirdPartyJobData (Lude.Maybe [Artifact])
tpjdOutputArtifacts = Lens.lens (outputArtifacts :: ThirdPartyJobData -> Lude.Maybe [Artifact]) (\s a -> s {outputArtifacts = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdOutputArtifacts "Use generic-lens or generic-optics with 'outputArtifacts' instead." #-}

-- | Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the S3 bucket used to store artifact for the pipeline in AWS CodePipeline.
--
-- /Note:/ Consider using 'artifactCredentials' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdArtifactCredentials :: Lens.Lens' ThirdPartyJobData (Lude.Maybe AWSSessionCredentials)
tpjdArtifactCredentials = Lens.lens (artifactCredentials :: ThirdPartyJobData -> Lude.Maybe AWSSessionCredentials) (\s a -> s {artifactCredentials = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdArtifactCredentials "Use generic-lens or generic-optics with 'artifactCredentials' instead." #-}

-- | Represents information about a pipeline to a job worker.
--
-- /Note:/ Consider using 'pipelineContext' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdPipelineContext :: Lens.Lens' ThirdPartyJobData (Lude.Maybe PipelineContext)
tpjdPipelineContext = Lens.lens (pipelineContext :: ThirdPartyJobData -> Lude.Maybe PipelineContext) (\s a -> s {pipelineContext = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdPipelineContext "Use generic-lens or generic-optics with 'pipelineContext' instead." #-}

-- | The encryption key used to encrypt and decrypt data in the artifact store for the pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and might not be present.
--
-- /Note:/ Consider using 'encryptionKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdEncryptionKey :: Lens.Lens' ThirdPartyJobData (Lude.Maybe EncryptionKey)
tpjdEncryptionKey = Lens.lens (encryptionKey :: ThirdPartyJobData -> Lude.Maybe EncryptionKey) (\s a -> s {encryptionKey = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdEncryptionKey "Use generic-lens or generic-optics with 'encryptionKey' instead." #-}

-- | Represents information about an action type.
--
-- /Note:/ Consider using 'actionTypeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdActionTypeId :: Lens.Lens' ThirdPartyJobData (Lude.Maybe ActionTypeId)
tpjdActionTypeId = Lens.lens (actionTypeId :: ThirdPartyJobData -> Lude.Maybe ActionTypeId) (\s a -> s {actionTypeId = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdActionTypeId "Use generic-lens or generic-optics with 'actionTypeId' instead." #-}

-- | The name of the artifact that is worked on by the action, if any. This name might be system-generated, such as "MyApp", or it might be defined by the user when the action is created. The input artifact name must match the name of an output artifact generated by an action in an earlier action or stage of the pipeline.
--
-- /Note:/ Consider using 'inputArtifacts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdInputArtifacts :: Lens.Lens' ThirdPartyJobData (Lude.Maybe [Artifact])
tpjdInputArtifacts = Lens.lens (inputArtifacts :: ThirdPartyJobData -> Lude.Maybe [Artifact]) (\s a -> s {inputArtifacts = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdInputArtifacts "Use generic-lens or generic-optics with 'inputArtifacts' instead." #-}

-- | Represents information about an action configuration.
--
-- /Note:/ Consider using 'actionConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpjdActionConfiguration :: Lens.Lens' ThirdPartyJobData (Lude.Maybe ActionConfiguration)
tpjdActionConfiguration = Lens.lens (actionConfiguration :: ThirdPartyJobData -> Lude.Maybe ActionConfiguration) (\s a -> s {actionConfiguration = a} :: ThirdPartyJobData)
{-# DEPRECATED tpjdActionConfiguration "Use generic-lens or generic-optics with 'actionConfiguration' instead." #-}

instance Lude.FromJSON ThirdPartyJobData where
  parseJSON =
    Lude.withObject
      "ThirdPartyJobData"
      ( \x ->
          ThirdPartyJobData'
            Lude.<$> (x Lude..:? "continuationToken")
            Lude.<*> (x Lude..:? "outputArtifacts" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "artifactCredentials")
            Lude.<*> (x Lude..:? "pipelineContext")
            Lude.<*> (x Lude..:? "encryptionKey")
            Lude.<*> (x Lude..:? "actionTypeId")
            Lude.<*> (x Lude..:? "inputArtifacts" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "actionConfiguration")
      )
