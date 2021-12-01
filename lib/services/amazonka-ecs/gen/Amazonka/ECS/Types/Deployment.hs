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
-- Module      : Amazonka.ECS.Types.Deployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.Deployment where

import qualified Amazonka.Core as Core
import Amazonka.ECS.Types.CapacityProviderStrategyItem
import Amazonka.ECS.Types.DeploymentRolloutState
import Amazonka.ECS.Types.LaunchType
import Amazonka.ECS.Types.NetworkConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details of an Amazon ECS service deployment. This is used only when
-- a service uses the @ECS@ deployment controller type.
--
-- /See:/ 'newDeployment' smart constructor.
data Deployment = Deployment'
  { -- | The @rolloutState@ of a service is only returned for services that use
    -- the rolling update (@ECS@) deployment type that are not behind a Classic
    -- Load Balancer.
    --
    -- The rollout state of the deployment. When a service deployment is
    -- started, it begins in an @IN_PROGRESS@ state. When the service reaches a
    -- steady state, the deployment will transition to a @COMPLETED@ state. If
    -- the service fails to reach a steady state and circuit breaker is
    -- enabled, the deployment will transition to a @FAILED@ state. A
    -- deployment in @FAILED@ state will launch no new tasks. For more
    -- information, see DeploymentCircuitBreaker.
    rolloutState :: Prelude.Maybe DeploymentRolloutState,
    -- | The number of tasks in the deployment that are in the @RUNNING@ status.
    runningCount :: Prelude.Maybe Prelude.Int,
    -- | The status of the deployment. The following describes each state:
    --
    -- [PRIMARY]
    --     The most recent deployment of a service.
    --
    -- [ACTIVE]
    --     A service deployment that still has running tasks, but are in the
    --     process of being replaced with a new @PRIMARY@ deployment.
    --
    -- [INACTIVE]
    --     A deployment that has been completely replaced.
    status :: Prelude.Maybe Prelude.Text,
    -- | The Unix timestamp for when the service deployment was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The platform version on which your tasks in the service are running. A
    -- platform version is only specified for tasks using the Fargate launch
    -- type. If one is not specified, the @LATEST@ platform version is used by
    -- default. For more information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    platformVersion :: Prelude.Maybe Prelude.Text,
    -- | The most recent desired count of tasks that was specified for the
    -- service to deploy or maintain.
    desiredCount :: Prelude.Maybe Prelude.Int,
    -- | The number of tasks in the deployment that are in the @PENDING@ status.
    pendingCount :: Prelude.Maybe Prelude.Int,
    -- | The ID of the deployment.
    id :: Prelude.Maybe Prelude.Text,
    -- | The number of consecutively failed tasks in the deployment. A task is
    -- considered a failure if the service scheduler can\'t launch the task,
    -- the task doesn\'t transition to a @RUNNING@ state, or if it fails any of
    -- its defined health checks and is stopped.
    --
    -- Once a service deployment has one or more successfully running tasks,
    -- the failed task count resets to zero and stops being evaluated.
    failedTasks :: Prelude.Maybe Prelude.Int,
    -- | The launch type the tasks in the service are using. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    launchType :: Prelude.Maybe LaunchType,
    -- | The Unix timestamp for when the service deployment was last updated.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | The most recent task definition that was specified for the tasks in the
    -- service to use.
    taskDefinition :: Prelude.Maybe Prelude.Text,
    -- | A description of the rollout state of a deployment.
    rolloutStateReason :: Prelude.Maybe Prelude.Text,
    -- | The VPC subnet and security group configuration for tasks that receive
    -- their own elastic network interface by using the @awsvpc@ networking
    -- mode.
    networkConfiguration :: Prelude.Maybe NetworkConfiguration,
    -- | The capacity provider strategy that the deployment is using.
    capacityProviderStrategy :: Prelude.Maybe [CapacityProviderStrategyItem]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Deployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rolloutState', 'deployment_rolloutState' - The @rolloutState@ of a service is only returned for services that use
-- the rolling update (@ECS@) deployment type that are not behind a Classic
-- Load Balancer.
--
-- The rollout state of the deployment. When a service deployment is
-- started, it begins in an @IN_PROGRESS@ state. When the service reaches a
-- steady state, the deployment will transition to a @COMPLETED@ state. If
-- the service fails to reach a steady state and circuit breaker is
-- enabled, the deployment will transition to a @FAILED@ state. A
-- deployment in @FAILED@ state will launch no new tasks. For more
-- information, see DeploymentCircuitBreaker.
--
-- 'runningCount', 'deployment_runningCount' - The number of tasks in the deployment that are in the @RUNNING@ status.
--
-- 'status', 'deployment_status' - The status of the deployment. The following describes each state:
--
-- [PRIMARY]
--     The most recent deployment of a service.
--
-- [ACTIVE]
--     A service deployment that still has running tasks, but are in the
--     process of being replaced with a new @PRIMARY@ deployment.
--
-- [INACTIVE]
--     A deployment that has been completely replaced.
--
-- 'createdAt', 'deployment_createdAt' - The Unix timestamp for when the service deployment was created.
--
-- 'platformVersion', 'deployment_platformVersion' - The platform version on which your tasks in the service are running. A
-- platform version is only specified for tasks using the Fargate launch
-- type. If one is not specified, the @LATEST@ platform version is used by
-- default. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- 'desiredCount', 'deployment_desiredCount' - The most recent desired count of tasks that was specified for the
-- service to deploy or maintain.
--
-- 'pendingCount', 'deployment_pendingCount' - The number of tasks in the deployment that are in the @PENDING@ status.
--
-- 'id', 'deployment_id' - The ID of the deployment.
--
-- 'failedTasks', 'deployment_failedTasks' - The number of consecutively failed tasks in the deployment. A task is
-- considered a failure if the service scheduler can\'t launch the task,
-- the task doesn\'t transition to a @RUNNING@ state, or if it fails any of
-- its defined health checks and is stopped.
--
-- Once a service deployment has one or more successfully running tasks,
-- the failed task count resets to zero and stops being evaluated.
--
-- 'launchType', 'deployment_launchType' - The launch type the tasks in the service are using. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- 'updatedAt', 'deployment_updatedAt' - The Unix timestamp for when the service deployment was last updated.
--
-- 'taskDefinition', 'deployment_taskDefinition' - The most recent task definition that was specified for the tasks in the
-- service to use.
--
-- 'rolloutStateReason', 'deployment_rolloutStateReason' - A description of the rollout state of a deployment.
--
-- 'networkConfiguration', 'deployment_networkConfiguration' - The VPC subnet and security group configuration for tasks that receive
-- their own elastic network interface by using the @awsvpc@ networking
-- mode.
--
-- 'capacityProviderStrategy', 'deployment_capacityProviderStrategy' - The capacity provider strategy that the deployment is using.
newDeployment ::
  Deployment
newDeployment =
  Deployment'
    { rolloutState = Prelude.Nothing,
      runningCount = Prelude.Nothing,
      status = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      platformVersion = Prelude.Nothing,
      desiredCount = Prelude.Nothing,
      pendingCount = Prelude.Nothing,
      id = Prelude.Nothing,
      failedTasks = Prelude.Nothing,
      launchType = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      taskDefinition = Prelude.Nothing,
      rolloutStateReason = Prelude.Nothing,
      networkConfiguration = Prelude.Nothing,
      capacityProviderStrategy = Prelude.Nothing
    }

-- | The @rolloutState@ of a service is only returned for services that use
-- the rolling update (@ECS@) deployment type that are not behind a Classic
-- Load Balancer.
--
-- The rollout state of the deployment. When a service deployment is
-- started, it begins in an @IN_PROGRESS@ state. When the service reaches a
-- steady state, the deployment will transition to a @COMPLETED@ state. If
-- the service fails to reach a steady state and circuit breaker is
-- enabled, the deployment will transition to a @FAILED@ state. A
-- deployment in @FAILED@ state will launch no new tasks. For more
-- information, see DeploymentCircuitBreaker.
deployment_rolloutState :: Lens.Lens' Deployment (Prelude.Maybe DeploymentRolloutState)
deployment_rolloutState = Lens.lens (\Deployment' {rolloutState} -> rolloutState) (\s@Deployment' {} a -> s {rolloutState = a} :: Deployment)

-- | The number of tasks in the deployment that are in the @RUNNING@ status.
deployment_runningCount :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Int)
deployment_runningCount = Lens.lens (\Deployment' {runningCount} -> runningCount) (\s@Deployment' {} a -> s {runningCount = a} :: Deployment)

-- | The status of the deployment. The following describes each state:
--
-- [PRIMARY]
--     The most recent deployment of a service.
--
-- [ACTIVE]
--     A service deployment that still has running tasks, but are in the
--     process of being replaced with a new @PRIMARY@ deployment.
--
-- [INACTIVE]
--     A deployment that has been completely replaced.
deployment_status :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Text)
deployment_status = Lens.lens (\Deployment' {status} -> status) (\s@Deployment' {} a -> s {status = a} :: Deployment)

-- | The Unix timestamp for when the service deployment was created.
deployment_createdAt :: Lens.Lens' Deployment (Prelude.Maybe Prelude.UTCTime)
deployment_createdAt = Lens.lens (\Deployment' {createdAt} -> createdAt) (\s@Deployment' {} a -> s {createdAt = a} :: Deployment) Prelude.. Lens.mapping Core._Time

-- | The platform version on which your tasks in the service are running. A
-- platform version is only specified for tasks using the Fargate launch
-- type. If one is not specified, the @LATEST@ platform version is used by
-- default. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
-- in the /Amazon Elastic Container Service Developer Guide/.
deployment_platformVersion :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Text)
deployment_platformVersion = Lens.lens (\Deployment' {platformVersion} -> platformVersion) (\s@Deployment' {} a -> s {platformVersion = a} :: Deployment)

-- | The most recent desired count of tasks that was specified for the
-- service to deploy or maintain.
deployment_desiredCount :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Int)
deployment_desiredCount = Lens.lens (\Deployment' {desiredCount} -> desiredCount) (\s@Deployment' {} a -> s {desiredCount = a} :: Deployment)

-- | The number of tasks in the deployment that are in the @PENDING@ status.
deployment_pendingCount :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Int)
deployment_pendingCount = Lens.lens (\Deployment' {pendingCount} -> pendingCount) (\s@Deployment' {} a -> s {pendingCount = a} :: Deployment)

-- | The ID of the deployment.
deployment_id :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Text)
deployment_id = Lens.lens (\Deployment' {id} -> id) (\s@Deployment' {} a -> s {id = a} :: Deployment)

-- | The number of consecutively failed tasks in the deployment. A task is
-- considered a failure if the service scheduler can\'t launch the task,
-- the task doesn\'t transition to a @RUNNING@ state, or if it fails any of
-- its defined health checks and is stopped.
--
-- Once a service deployment has one or more successfully running tasks,
-- the failed task count resets to zero and stops being evaluated.
deployment_failedTasks :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Int)
deployment_failedTasks = Lens.lens (\Deployment' {failedTasks} -> failedTasks) (\s@Deployment' {} a -> s {failedTasks = a} :: Deployment)

-- | The launch type the tasks in the service are using. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types>
-- in the /Amazon Elastic Container Service Developer Guide/.
deployment_launchType :: Lens.Lens' Deployment (Prelude.Maybe LaunchType)
deployment_launchType = Lens.lens (\Deployment' {launchType} -> launchType) (\s@Deployment' {} a -> s {launchType = a} :: Deployment)

-- | The Unix timestamp for when the service deployment was last updated.
deployment_updatedAt :: Lens.Lens' Deployment (Prelude.Maybe Prelude.UTCTime)
deployment_updatedAt = Lens.lens (\Deployment' {updatedAt} -> updatedAt) (\s@Deployment' {} a -> s {updatedAt = a} :: Deployment) Prelude.. Lens.mapping Core._Time

-- | The most recent task definition that was specified for the tasks in the
-- service to use.
deployment_taskDefinition :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Text)
deployment_taskDefinition = Lens.lens (\Deployment' {taskDefinition} -> taskDefinition) (\s@Deployment' {} a -> s {taskDefinition = a} :: Deployment)

-- | A description of the rollout state of a deployment.
deployment_rolloutStateReason :: Lens.Lens' Deployment (Prelude.Maybe Prelude.Text)
deployment_rolloutStateReason = Lens.lens (\Deployment' {rolloutStateReason} -> rolloutStateReason) (\s@Deployment' {} a -> s {rolloutStateReason = a} :: Deployment)

-- | The VPC subnet and security group configuration for tasks that receive
-- their own elastic network interface by using the @awsvpc@ networking
-- mode.
deployment_networkConfiguration :: Lens.Lens' Deployment (Prelude.Maybe NetworkConfiguration)
deployment_networkConfiguration = Lens.lens (\Deployment' {networkConfiguration} -> networkConfiguration) (\s@Deployment' {} a -> s {networkConfiguration = a} :: Deployment)

-- | The capacity provider strategy that the deployment is using.
deployment_capacityProviderStrategy :: Lens.Lens' Deployment (Prelude.Maybe [CapacityProviderStrategyItem])
deployment_capacityProviderStrategy = Lens.lens (\Deployment' {capacityProviderStrategy} -> capacityProviderStrategy) (\s@Deployment' {} a -> s {capacityProviderStrategy = a} :: Deployment) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Deployment where
  parseJSON =
    Core.withObject
      "Deployment"
      ( \x ->
          Deployment'
            Prelude.<$> (x Core..:? "rolloutState")
            Prelude.<*> (x Core..:? "runningCount")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "platformVersion")
            Prelude.<*> (x Core..:? "desiredCount")
            Prelude.<*> (x Core..:? "pendingCount")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "failedTasks")
            Prelude.<*> (x Core..:? "launchType")
            Prelude.<*> (x Core..:? "updatedAt")
            Prelude.<*> (x Core..:? "taskDefinition")
            Prelude.<*> (x Core..:? "rolloutStateReason")
            Prelude.<*> (x Core..:? "networkConfiguration")
            Prelude.<*> ( x Core..:? "capacityProviderStrategy"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable Deployment where
  hashWithSalt salt' Deployment' {..} =
    salt'
      `Prelude.hashWithSalt` capacityProviderStrategy
      `Prelude.hashWithSalt` networkConfiguration
      `Prelude.hashWithSalt` rolloutStateReason
      `Prelude.hashWithSalt` taskDefinition
      `Prelude.hashWithSalt` updatedAt
      `Prelude.hashWithSalt` launchType
      `Prelude.hashWithSalt` failedTasks
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` pendingCount
      `Prelude.hashWithSalt` desiredCount
      `Prelude.hashWithSalt` platformVersion
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` runningCount
      `Prelude.hashWithSalt` rolloutState

instance Prelude.NFData Deployment where
  rnf Deployment' {..} =
    Prelude.rnf rolloutState
      `Prelude.seq` Prelude.rnf capacityProviderStrategy
      `Prelude.seq` Prelude.rnf networkConfiguration
      `Prelude.seq` Prelude.rnf rolloutStateReason
      `Prelude.seq` Prelude.rnf taskDefinition
      `Prelude.seq` Prelude.rnf updatedAt
      `Prelude.seq` Prelude.rnf launchType
      `Prelude.seq` Prelude.rnf failedTasks
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf pendingCount
      `Prelude.seq` Prelude.rnf desiredCount
      `Prelude.seq` Prelude.rnf platformVersion
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf runningCount
