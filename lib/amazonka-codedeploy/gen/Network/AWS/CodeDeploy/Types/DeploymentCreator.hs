{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentCreator
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentCreator
  ( DeploymentCreator
      ( DeploymentCreator',
        User,
        Autoscaling,
        CodeDeployRollback,
        CodeDeploy,
        CloudFormation,
        CloudFormationRollback
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DeploymentCreator = DeploymentCreator' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern User :: DeploymentCreator
pattern User = DeploymentCreator' "user"

pattern Autoscaling :: DeploymentCreator
pattern Autoscaling = DeploymentCreator' "autoscaling"

pattern CodeDeployRollback :: DeploymentCreator
pattern CodeDeployRollback = DeploymentCreator' "codeDeployRollback"

pattern CodeDeploy :: DeploymentCreator
pattern CodeDeploy = DeploymentCreator' "CodeDeploy"

pattern CloudFormation :: DeploymentCreator
pattern CloudFormation = DeploymentCreator' "CloudFormation"

pattern CloudFormationRollback :: DeploymentCreator
pattern CloudFormationRollback = DeploymentCreator' "CloudFormationRollback"

{-# COMPLETE
  User,
  Autoscaling,
  CodeDeployRollback,
  CodeDeploy,
  CloudFormation,
  CloudFormationRollback,
  DeploymentCreator'
  #-}
