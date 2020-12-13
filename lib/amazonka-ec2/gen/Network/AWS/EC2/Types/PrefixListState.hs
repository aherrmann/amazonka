{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PrefixListState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PrefixListState
  ( PrefixListState
      ( PrefixListState',
        CreateInProgress,
        CreateComplete,
        CreateFailed,
        ModifyInProgress,
        ModifyComplete,
        ModifyFailed,
        RestoreInProgress,
        RestoreComplete,
        RestoreFailed,
        DeleteInProgress,
        DeleteComplete,
        DeleteFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PrefixListState = PrefixListState' Lude.Text
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

pattern CreateInProgress :: PrefixListState
pattern CreateInProgress = PrefixListState' "create-in-progress"

pattern CreateComplete :: PrefixListState
pattern CreateComplete = PrefixListState' "create-complete"

pattern CreateFailed :: PrefixListState
pattern CreateFailed = PrefixListState' "create-failed"

pattern ModifyInProgress :: PrefixListState
pattern ModifyInProgress = PrefixListState' "modify-in-progress"

pattern ModifyComplete :: PrefixListState
pattern ModifyComplete = PrefixListState' "modify-complete"

pattern ModifyFailed :: PrefixListState
pattern ModifyFailed = PrefixListState' "modify-failed"

pattern RestoreInProgress :: PrefixListState
pattern RestoreInProgress = PrefixListState' "restore-in-progress"

pattern RestoreComplete :: PrefixListState
pattern RestoreComplete = PrefixListState' "restore-complete"

pattern RestoreFailed :: PrefixListState
pattern RestoreFailed = PrefixListState' "restore-failed"

pattern DeleteInProgress :: PrefixListState
pattern DeleteInProgress = PrefixListState' "delete-in-progress"

pattern DeleteComplete :: PrefixListState
pattern DeleteComplete = PrefixListState' "delete-complete"

pattern DeleteFailed :: PrefixListState
pattern DeleteFailed = PrefixListState' "delete-failed"

{-# COMPLETE
  CreateInProgress,
  CreateComplete,
  CreateFailed,
  ModifyInProgress,
  ModifyComplete,
  ModifyFailed,
  RestoreInProgress,
  RestoreComplete,
  RestoreFailed,
  DeleteInProgress,
  DeleteComplete,
  DeleteFailed,
  PrefixListState'
  #-}
