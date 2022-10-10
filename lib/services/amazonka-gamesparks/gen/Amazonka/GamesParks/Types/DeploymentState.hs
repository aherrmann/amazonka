{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.GamesParks.Types.DeploymentState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GamesParks.Types.DeploymentState
  ( DeploymentState
      ( ..,
        DeploymentState_COMPLETED,
        DeploymentState_FAILED,
        DeploymentState_IN_PROGRESS,
        DeploymentState_PENDING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DeploymentState = DeploymentState'
  { fromDeploymentState ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern DeploymentState_COMPLETED :: DeploymentState
pattern DeploymentState_COMPLETED = DeploymentState' "COMPLETED"

pattern DeploymentState_FAILED :: DeploymentState
pattern DeploymentState_FAILED = DeploymentState' "FAILED"

pattern DeploymentState_IN_PROGRESS :: DeploymentState
pattern DeploymentState_IN_PROGRESS = DeploymentState' "IN_PROGRESS"

pattern DeploymentState_PENDING :: DeploymentState
pattern DeploymentState_PENDING = DeploymentState' "PENDING"

{-# COMPLETE
  DeploymentState_COMPLETED,
  DeploymentState_FAILED,
  DeploymentState_IN_PROGRESS,
  DeploymentState_PENDING,
  DeploymentState'
  #-}
