{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Feature
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Feature
  ( Feature
      ( Feature',
        Bluetooth,
        Volume,
        Notifications,
        Lists,
        Skills,
        NetworkProfile,
        Settings,
        All
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype Feature = Feature' Lude.Text
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

pattern Bluetooth :: Feature
pattern Bluetooth = Feature' "BLUETOOTH"

pattern Volume :: Feature
pattern Volume = Feature' "VOLUME"

pattern Notifications :: Feature
pattern Notifications = Feature' "NOTIFICATIONS"

pattern Lists :: Feature
pattern Lists = Feature' "LISTS"

pattern Skills :: Feature
pattern Skills = Feature' "SKILLS"

pattern NetworkProfile :: Feature
pattern NetworkProfile = Feature' "NETWORK_PROFILE"

pattern Settings :: Feature
pattern Settings = Feature' "SETTINGS"

pattern All :: Feature
pattern All = Feature' "ALL"

{-# COMPLETE
  Bluetooth,
  Volume,
  Notifications,
  Lists,
  Skills,
  NetworkProfile,
  Settings,
  All,
  Feature'
  #-}
