{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.Output
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.Output
  ( Output (..),

    -- * Smart constructor
    mkOutput,

    -- * Lenses
    oDestinationSchema,
    oLambdaOutput,
    oName,
    oKinesisStreamsOutput,
    oKinesisFirehoseOutput,
  )
where

import Network.AWS.KinesisAnalytics.Types.DestinationSchema
import Network.AWS.KinesisAnalytics.Types.KinesisFirehoseOutput
import Network.AWS.KinesisAnalytics.Types.KinesisStreamsOutput
import Network.AWS.KinesisAnalytics.Types.LambdaOutput
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.
--
--
-- For limits on how many destinations an application can write and other limitations, see <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html Limits> .
--
-- /See:/ 'mkOutput' smart constructor.
data Output = Output'
  { -- | Describes the data format when records are written to the destination. For more information, see <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html Configuring Application Output> .
    destinationSchema :: DestinationSchema,
    -- | Identifies an AWS Lambda function as the destination.
    lambdaOutput :: Lude.Maybe LambdaOutput,
    -- | Name of the in-application stream.
    name :: Lude.Text,
    -- | Identifies an Amazon Kinesis stream as the destination.
    kinesisStreamsOutput :: Lude.Maybe KinesisStreamsOutput,
    -- | Identifies an Amazon Kinesis Firehose delivery stream as the destination.
    kinesisFirehoseOutput :: Lude.Maybe KinesisFirehoseOutput
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Output' with the minimum fields required to make a request.
--
-- * 'destinationSchema' - Describes the data format when records are written to the destination. For more information, see <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html Configuring Application Output> .
-- * 'lambdaOutput' - Identifies an AWS Lambda function as the destination.
-- * 'name' - Name of the in-application stream.
-- * 'kinesisStreamsOutput' - Identifies an Amazon Kinesis stream as the destination.
-- * 'kinesisFirehoseOutput' - Identifies an Amazon Kinesis Firehose delivery stream as the destination.
mkOutput ::
  -- | 'destinationSchema'
  DestinationSchema ->
  -- | 'name'
  Lude.Text ->
  Output
mkOutput pDestinationSchema_ pName_ =
  Output'
    { destinationSchema = pDestinationSchema_,
      lambdaOutput = Lude.Nothing,
      name = pName_,
      kinesisStreamsOutput = Lude.Nothing,
      kinesisFirehoseOutput = Lude.Nothing
    }

-- | Describes the data format when records are written to the destination. For more information, see <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html Configuring Application Output> .
--
-- /Note:/ Consider using 'destinationSchema' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oDestinationSchema :: Lens.Lens' Output DestinationSchema
oDestinationSchema = Lens.lens (destinationSchema :: Output -> DestinationSchema) (\s a -> s {destinationSchema = a} :: Output)
{-# DEPRECATED oDestinationSchema "Use generic-lens or generic-optics with 'destinationSchema' instead." #-}

-- | Identifies an AWS Lambda function as the destination.
--
-- /Note:/ Consider using 'lambdaOutput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oLambdaOutput :: Lens.Lens' Output (Lude.Maybe LambdaOutput)
oLambdaOutput = Lens.lens (lambdaOutput :: Output -> Lude.Maybe LambdaOutput) (\s a -> s {lambdaOutput = a} :: Output)
{-# DEPRECATED oLambdaOutput "Use generic-lens or generic-optics with 'lambdaOutput' instead." #-}

-- | Name of the in-application stream.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oName :: Lens.Lens' Output Lude.Text
oName = Lens.lens (name :: Output -> Lude.Text) (\s a -> s {name = a} :: Output)
{-# DEPRECATED oName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | Identifies an Amazon Kinesis stream as the destination.
--
-- /Note:/ Consider using 'kinesisStreamsOutput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oKinesisStreamsOutput :: Lens.Lens' Output (Lude.Maybe KinesisStreamsOutput)
oKinesisStreamsOutput = Lens.lens (kinesisStreamsOutput :: Output -> Lude.Maybe KinesisStreamsOutput) (\s a -> s {kinesisStreamsOutput = a} :: Output)
{-# DEPRECATED oKinesisStreamsOutput "Use generic-lens or generic-optics with 'kinesisStreamsOutput' instead." #-}

-- | Identifies an Amazon Kinesis Firehose delivery stream as the destination.
--
-- /Note:/ Consider using 'kinesisFirehoseOutput' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
oKinesisFirehoseOutput :: Lens.Lens' Output (Lude.Maybe KinesisFirehoseOutput)
oKinesisFirehoseOutput = Lens.lens (kinesisFirehoseOutput :: Output -> Lude.Maybe KinesisFirehoseOutput) (\s a -> s {kinesisFirehoseOutput = a} :: Output)
{-# DEPRECATED oKinesisFirehoseOutput "Use generic-lens or generic-optics with 'kinesisFirehoseOutput' instead." #-}

instance Lude.ToJSON Output where
  toJSON Output' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("DestinationSchema" Lude..= destinationSchema),
            ("LambdaOutput" Lude..=) Lude.<$> lambdaOutput,
            Lude.Just ("Name" Lude..= name),
            ("KinesisStreamsOutput" Lude..=) Lude.<$> kinesisStreamsOutput,
            ("KinesisFirehoseOutput" Lude..=) Lude.<$> kinesisFirehoseOutput
          ]
      )
