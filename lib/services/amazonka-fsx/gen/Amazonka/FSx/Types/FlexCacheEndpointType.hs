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
-- Module      : Amazonka.FSx.Types.FlexCacheEndpointType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.FlexCacheEndpointType
  ( FlexCacheEndpointType
      ( ..,
        FlexCacheEndpointType_CACHE,
        FlexCacheEndpointType_NONE,
        FlexCacheEndpointType_ORIGIN
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype FlexCacheEndpointType = FlexCacheEndpointType'
  { fromFlexCacheEndpointType ::
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

pattern FlexCacheEndpointType_CACHE :: FlexCacheEndpointType
pattern FlexCacheEndpointType_CACHE = FlexCacheEndpointType' "CACHE"

pattern FlexCacheEndpointType_NONE :: FlexCacheEndpointType
pattern FlexCacheEndpointType_NONE = FlexCacheEndpointType' "NONE"

pattern FlexCacheEndpointType_ORIGIN :: FlexCacheEndpointType
pattern FlexCacheEndpointType_ORIGIN = FlexCacheEndpointType' "ORIGIN"

{-# COMPLETE
  FlexCacheEndpointType_CACHE,
  FlexCacheEndpointType_NONE,
  FlexCacheEndpointType_ORIGIN,
  FlexCacheEndpointType'
  #-}
