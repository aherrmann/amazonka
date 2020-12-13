{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTrainingJobSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTrainingJobSummary
  ( HyperParameterTrainingJobSummary (..),

    -- * Smart constructor
    mkHyperParameterTrainingJobSummary,

    -- * Lenses
    hptjsCreationTime,
    hptjsFailureReason,
    hptjsTuningJobName,
    hptjsTunedHyperParameters,
    hptjsTrainingEndTime,
    hptjsObjectiveStatus,
    hptjsTrainingJobStatus,
    hptjsTrainingJobARN,
    hptjsTrainingJobDefinitionName,
    hptjsTrainingStartTime,
    hptjsTrainingJobName,
    hptjsFinalHyperParameterTuningJobObjectiveMetric,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.FinalHyperParameterTuningJobObjectiveMetric
import Network.AWS.SageMaker.Types.ObjectiveStatus
import Network.AWS.SageMaker.Types.TrainingJobStatus

-- | Specifies summary information about a training job.
--
-- /See:/ 'mkHyperParameterTrainingJobSummary' smart constructor.
data HyperParameterTrainingJobSummary = HyperParameterTrainingJobSummary'
  { -- | The date and time that the training job was created.
    creationTime :: Lude.Timestamp,
    -- | The reason that the training job failed.
    failureReason :: Lude.Maybe Lude.Text,
    -- | The HyperParameter tuning job that launched the training job.
    tuningJobName :: Lude.Maybe Lude.Text,
    -- | A list of the hyperparameters for which you specified ranges to search.
    tunedHyperParameters :: Lude.HashMap Lude.Text (Lude.Text),
    -- | Specifies the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
    trainingEndTime :: Lude.Maybe Lude.Timestamp,
    -- | The status of the objective metric for the training job:
    --
    --
    --     * Succeeded: The final objective metric for the training job was evaluated by the hyperparameter tuning job and used in the hyperparameter tuning process.
    --
    --
    --
    --     * Pending: The training job is in progress and evaluation of its final objective metric is pending.
    --
    --
    --
    --     * Failed: The final objective metric for the training job was not evaluated, and was not used in the hyperparameter tuning process. This typically occurs when the training job failed or did not emit an objective metric.
    objectiveStatus :: Lude.Maybe ObjectiveStatus,
    -- | The status of the training job.
    trainingJobStatus :: TrainingJobStatus,
    -- | The Amazon Resource Name (ARN) of the training job.
    trainingJobARN :: Lude.Text,
    -- | The training job definition name.
    trainingJobDefinitionName :: Lude.Maybe Lude.Text,
    -- | The date and time that the training job started.
    trainingStartTime :: Lude.Maybe Lude.Timestamp,
    -- | The name of the training job.
    trainingJobName :: Lude.Text,
    -- | The 'FinalHyperParameterTuningJobObjectiveMetric' object that specifies the value of the objective metric of the tuning job that launched this training job.
    finalHyperParameterTuningJobObjectiveMetric :: Lude.Maybe FinalHyperParameterTuningJobObjectiveMetric
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'HyperParameterTrainingJobSummary' with the minimum fields required to make a request.
--
-- * 'creationTime' - The date and time that the training job was created.
-- * 'failureReason' - The reason that the training job failed.
-- * 'tuningJobName' - The HyperParameter tuning job that launched the training job.
-- * 'tunedHyperParameters' - A list of the hyperparameters for which you specified ranges to search.
-- * 'trainingEndTime' - Specifies the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
-- * 'objectiveStatus' - The status of the objective metric for the training job:
--
--
--     * Succeeded: The final objective metric for the training job was evaluated by the hyperparameter tuning job and used in the hyperparameter tuning process.
--
--
--
--     * Pending: The training job is in progress and evaluation of its final objective metric is pending.
--
--
--
--     * Failed: The final objective metric for the training job was not evaluated, and was not used in the hyperparameter tuning process. This typically occurs when the training job failed or did not emit an objective metric.
--
--
-- * 'trainingJobStatus' - The status of the training job.
-- * 'trainingJobARN' - The Amazon Resource Name (ARN) of the training job.
-- * 'trainingJobDefinitionName' - The training job definition name.
-- * 'trainingStartTime' - The date and time that the training job started.
-- * 'trainingJobName' - The name of the training job.
-- * 'finalHyperParameterTuningJobObjectiveMetric' - The 'FinalHyperParameterTuningJobObjectiveMetric' object that specifies the value of the objective metric of the tuning job that launched this training job.
mkHyperParameterTrainingJobSummary ::
  -- | 'creationTime'
  Lude.Timestamp ->
  -- | 'trainingJobStatus'
  TrainingJobStatus ->
  -- | 'trainingJobARN'
  Lude.Text ->
  -- | 'trainingJobName'
  Lude.Text ->
  HyperParameterTrainingJobSummary
mkHyperParameterTrainingJobSummary
  pCreationTime_
  pTrainingJobStatus_
  pTrainingJobARN_
  pTrainingJobName_ =
    HyperParameterTrainingJobSummary'
      { creationTime = pCreationTime_,
        failureReason = Lude.Nothing,
        tuningJobName = Lude.Nothing,
        tunedHyperParameters = Lude.mempty,
        trainingEndTime = Lude.Nothing,
        objectiveStatus = Lude.Nothing,
        trainingJobStatus = pTrainingJobStatus_,
        trainingJobARN = pTrainingJobARN_,
        trainingJobDefinitionName = Lude.Nothing,
        trainingStartTime = Lude.Nothing,
        trainingJobName = pTrainingJobName_,
        finalHyperParameterTuningJobObjectiveMetric = Lude.Nothing
      }

-- | The date and time that the training job was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsCreationTime :: Lens.Lens' HyperParameterTrainingJobSummary Lude.Timestamp
hptjsCreationTime = Lens.lens (creationTime :: HyperParameterTrainingJobSummary -> Lude.Timestamp) (\s a -> s {creationTime = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

-- | The reason that the training job failed.
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsFailureReason :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.Maybe Lude.Text)
hptjsFailureReason = Lens.lens (failureReason :: HyperParameterTrainingJobSummary -> Lude.Maybe Lude.Text) (\s a -> s {failureReason = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsFailureReason "Use generic-lens or generic-optics with 'failureReason' instead." #-}

-- | The HyperParameter tuning job that launched the training job.
--
-- /Note:/ Consider using 'tuningJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTuningJobName :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.Maybe Lude.Text)
hptjsTuningJobName = Lens.lens (tuningJobName :: HyperParameterTrainingJobSummary -> Lude.Maybe Lude.Text) (\s a -> s {tuningJobName = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTuningJobName "Use generic-lens or generic-optics with 'tuningJobName' instead." #-}

-- | A list of the hyperparameters for which you specified ranges to search.
--
-- /Note:/ Consider using 'tunedHyperParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTunedHyperParameters :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.HashMap Lude.Text (Lude.Text))
hptjsTunedHyperParameters = Lens.lens (tunedHyperParameters :: HyperParameterTrainingJobSummary -> Lude.HashMap Lude.Text (Lude.Text)) (\s a -> s {tunedHyperParameters = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTunedHyperParameters "Use generic-lens or generic-optics with 'tunedHyperParameters' instead." #-}

-- | Specifies the time when the training job ends on training instances. You are billed for the time interval between the value of @TrainingStartTime@ and this time. For successful jobs and stopped jobs, this is the time after model artifacts are uploaded. For failed jobs, this is the time when Amazon SageMaker detects a job failure.
--
-- /Note:/ Consider using 'trainingEndTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTrainingEndTime :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.Maybe Lude.Timestamp)
hptjsTrainingEndTime = Lens.lens (trainingEndTime :: HyperParameterTrainingJobSummary -> Lude.Maybe Lude.Timestamp) (\s a -> s {trainingEndTime = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTrainingEndTime "Use generic-lens or generic-optics with 'trainingEndTime' instead." #-}

-- | The status of the objective metric for the training job:
--
--
--     * Succeeded: The final objective metric for the training job was evaluated by the hyperparameter tuning job and used in the hyperparameter tuning process.
--
--
--
--     * Pending: The training job is in progress and evaluation of its final objective metric is pending.
--
--
--
--     * Failed: The final objective metric for the training job was not evaluated, and was not used in the hyperparameter tuning process. This typically occurs when the training job failed or did not emit an objective metric.
--
--
--
-- /Note:/ Consider using 'objectiveStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsObjectiveStatus :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.Maybe ObjectiveStatus)
hptjsObjectiveStatus = Lens.lens (objectiveStatus :: HyperParameterTrainingJobSummary -> Lude.Maybe ObjectiveStatus) (\s a -> s {objectiveStatus = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsObjectiveStatus "Use generic-lens or generic-optics with 'objectiveStatus' instead." #-}

-- | The status of the training job.
--
-- /Note:/ Consider using 'trainingJobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTrainingJobStatus :: Lens.Lens' HyperParameterTrainingJobSummary TrainingJobStatus
hptjsTrainingJobStatus = Lens.lens (trainingJobStatus :: HyperParameterTrainingJobSummary -> TrainingJobStatus) (\s a -> s {trainingJobStatus = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTrainingJobStatus "Use generic-lens or generic-optics with 'trainingJobStatus' instead." #-}

-- | The Amazon Resource Name (ARN) of the training job.
--
-- /Note:/ Consider using 'trainingJobARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTrainingJobARN :: Lens.Lens' HyperParameterTrainingJobSummary Lude.Text
hptjsTrainingJobARN = Lens.lens (trainingJobARN :: HyperParameterTrainingJobSummary -> Lude.Text) (\s a -> s {trainingJobARN = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTrainingJobARN "Use generic-lens or generic-optics with 'trainingJobARN' instead." #-}

-- | The training job definition name.
--
-- /Note:/ Consider using 'trainingJobDefinitionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTrainingJobDefinitionName :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.Maybe Lude.Text)
hptjsTrainingJobDefinitionName = Lens.lens (trainingJobDefinitionName :: HyperParameterTrainingJobSummary -> Lude.Maybe Lude.Text) (\s a -> s {trainingJobDefinitionName = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTrainingJobDefinitionName "Use generic-lens or generic-optics with 'trainingJobDefinitionName' instead." #-}

-- | The date and time that the training job started.
--
-- /Note:/ Consider using 'trainingStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTrainingStartTime :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.Maybe Lude.Timestamp)
hptjsTrainingStartTime = Lens.lens (trainingStartTime :: HyperParameterTrainingJobSummary -> Lude.Maybe Lude.Timestamp) (\s a -> s {trainingStartTime = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTrainingStartTime "Use generic-lens or generic-optics with 'trainingStartTime' instead." #-}

-- | The name of the training job.
--
-- /Note:/ Consider using 'trainingJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsTrainingJobName :: Lens.Lens' HyperParameterTrainingJobSummary Lude.Text
hptjsTrainingJobName = Lens.lens (trainingJobName :: HyperParameterTrainingJobSummary -> Lude.Text) (\s a -> s {trainingJobName = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsTrainingJobName "Use generic-lens or generic-optics with 'trainingJobName' instead." #-}

-- | The 'FinalHyperParameterTuningJobObjectiveMetric' object that specifies the value of the objective metric of the tuning job that launched this training job.
--
-- /Note:/ Consider using 'finalHyperParameterTuningJobObjectiveMetric' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjsFinalHyperParameterTuningJobObjectiveMetric :: Lens.Lens' HyperParameterTrainingJobSummary (Lude.Maybe FinalHyperParameterTuningJobObjectiveMetric)
hptjsFinalHyperParameterTuningJobObjectiveMetric = Lens.lens (finalHyperParameterTuningJobObjectiveMetric :: HyperParameterTrainingJobSummary -> Lude.Maybe FinalHyperParameterTuningJobObjectiveMetric) (\s a -> s {finalHyperParameterTuningJobObjectiveMetric = a} :: HyperParameterTrainingJobSummary)
{-# DEPRECATED hptjsFinalHyperParameterTuningJobObjectiveMetric "Use generic-lens or generic-optics with 'finalHyperParameterTuningJobObjectiveMetric' instead." #-}

instance Lude.FromJSON HyperParameterTrainingJobSummary where
  parseJSON =
    Lude.withObject
      "HyperParameterTrainingJobSummary"
      ( \x ->
          HyperParameterTrainingJobSummary'
            Lude.<$> (x Lude..: "CreationTime")
            Lude.<*> (x Lude..:? "FailureReason")
            Lude.<*> (x Lude..:? "TuningJobName")
            Lude.<*> (x Lude..:? "TunedHyperParameters" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "TrainingEndTime")
            Lude.<*> (x Lude..:? "ObjectiveStatus")
            Lude.<*> (x Lude..: "TrainingJobStatus")
            Lude.<*> (x Lude..: "TrainingJobArn")
            Lude.<*> (x Lude..:? "TrainingJobDefinitionName")
            Lude.<*> (x Lude..:? "TrainingStartTime")
            Lude.<*> (x Lude..: "TrainingJobName")
            Lude.<*> (x Lude..:? "FinalHyperParameterTuningJobObjectiveMetric")
      )
