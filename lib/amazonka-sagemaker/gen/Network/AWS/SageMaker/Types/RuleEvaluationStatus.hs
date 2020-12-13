{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RuleEvaluationStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RuleEvaluationStatus
  ( RuleEvaluationStatus
      ( RuleEvaluationStatus',
        InProgress,
        NoIssuesFound,
        IssuesFound,
        Error,
        Stopping,
        Stopped
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RuleEvaluationStatus = RuleEvaluationStatus' Lude.Text
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

pattern InProgress :: RuleEvaluationStatus
pattern InProgress = RuleEvaluationStatus' "InProgress"

pattern NoIssuesFound :: RuleEvaluationStatus
pattern NoIssuesFound = RuleEvaluationStatus' "NoIssuesFound"

pattern IssuesFound :: RuleEvaluationStatus
pattern IssuesFound = RuleEvaluationStatus' "IssuesFound"

pattern Error :: RuleEvaluationStatus
pattern Error = RuleEvaluationStatus' "Error"

pattern Stopping :: RuleEvaluationStatus
pattern Stopping = RuleEvaluationStatus' "Stopping"

pattern Stopped :: RuleEvaluationStatus
pattern Stopped = RuleEvaluationStatus' "Stopped"

{-# COMPLETE
  InProgress,
  NoIssuesFound,
  IssuesFound,
  Error,
  Stopping,
  Stopped,
  RuleEvaluationStatus'
  #-}
