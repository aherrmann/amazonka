{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.TerminologyData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.TerminologyData
  ( TerminologyData (..),

    -- * Smart constructor
    mkTerminologyData,

    -- * Lenses
    tdFormat,
    tdFile,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Translate.Types.TerminologyDataFormat

-- | The data associated with the custom terminology.
--
-- /See:/ 'mkTerminologyData' smart constructor.
data TerminologyData = TerminologyData'
  { -- | The data format of the custom terminology. Either CSV or TMX.
    format :: TerminologyDataFormat,
    -- | The file containing the custom terminology data. Your version of the AWS SDK performs a Base64-encoding on this field before sending a request to the AWS service. Users of the SDK should not perform Base64-encoding themselves.
    file :: Lude.Sensitive Lude.Base64
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TerminologyData' with the minimum fields required to make a request.
--
-- * 'format' - The data format of the custom terminology. Either CSV or TMX.
-- * 'file' - The file containing the custom terminology data. Your version of the AWS SDK performs a Base64-encoding on this field before sending a request to the AWS service. Users of the SDK should not perform Base64-encoding themselves.
mkTerminologyData ::
  -- | 'format'
  TerminologyDataFormat ->
  -- | 'file'
  Lude.Sensitive Lude.Base64 ->
  TerminologyData
mkTerminologyData pFormat_ pFile_ =
  TerminologyData' {format = pFormat_, file = pFile_}

-- | The data format of the custom terminology. Either CSV or TMX.
--
-- /Note:/ Consider using 'format' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdFormat :: Lens.Lens' TerminologyData TerminologyDataFormat
tdFormat = Lens.lens (format :: TerminologyData -> TerminologyDataFormat) (\s a -> s {format = a} :: TerminologyData)
{-# DEPRECATED tdFormat "Use generic-lens or generic-optics with 'format' instead." #-}

-- | The file containing the custom terminology data. Your version of the AWS SDK performs a Base64-encoding on this field before sending a request to the AWS service. Users of the SDK should not perform Base64-encoding themselves.--
-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- The underlying isomorphism will encode to Base64 representation during
-- serialisation, and decode from Base64 representation during deserialisation.
-- This 'Lens' accepts and returns only raw unencoded data.
--
-- /Note:/ Consider using 'file' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdFile :: Lens.Lens' TerminologyData (Lude.Sensitive Lude.Base64)
tdFile = Lens.lens (file :: TerminologyData -> Lude.Sensitive Lude.Base64) (\s a -> s {file = a} :: TerminologyData)
{-# DEPRECATED tdFile "Use generic-lens or generic-optics with 'file' instead." #-}

instance Lude.ToJSON TerminologyData where
  toJSON TerminologyData' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Format" Lude..= format),
            Lude.Just ("File" Lude..= file)
          ]
      )
