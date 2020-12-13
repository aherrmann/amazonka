{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.PlayerSessionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.PlayerSessionStatus
  ( PlayerSessionStatus
      ( PlayerSessionStatus',
        Reserved,
        Active,
        Completed,
        Timedout
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PlayerSessionStatus = PlayerSessionStatus' Lude.Text
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

pattern Reserved :: PlayerSessionStatus
pattern Reserved = PlayerSessionStatus' "RESERVED"

pattern Active :: PlayerSessionStatus
pattern Active = PlayerSessionStatus' "ACTIVE"

pattern Completed :: PlayerSessionStatus
pattern Completed = PlayerSessionStatus' "COMPLETED"

pattern Timedout :: PlayerSessionStatus
pattern Timedout = PlayerSessionStatus' "TIMEDOUT"

{-# COMPLETE
  Reserved,
  Active,
  Completed,
  Timedout,
  PlayerSessionStatus'
  #-}
