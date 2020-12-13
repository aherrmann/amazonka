{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.StreamingDistribution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.StreamingDistribution
  ( StreamingDistribution (..),

    -- * Smart constructor
    mkStreamingDistribution,

    -- * Lenses
    sdStatus,
    sdStreamingDistributionConfig,
    sdARN,
    sdLastModifiedTime,
    sdDomainName,
    sdId,
    sdActiveTrustedSigners,
  )
where

import Network.AWS.CloudFront.Types.ActiveTrustedSigners
import Network.AWS.CloudFront.Types.StreamingDistributionConfig
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A streaming distribution tells CloudFront where you want RTMP content to be delivered from, and the details about how to track and manage content delivery.
--
-- /See:/ 'mkStreamingDistribution' smart constructor.
data StreamingDistribution = StreamingDistribution'
  { -- | The current status of the RTMP distribution. When the status is @Deployed@ , the distribution's information is propagated to all CloudFront edge locations.
    status :: Lude.Text,
    -- | The current configuration information for the RTMP distribution.
    streamingDistributionConfig :: StreamingDistributionConfig,
    -- | The ARN (Amazon Resource Name) for the distribution. For example: @arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5@ , where @123456789012@ is your AWS account ID.
    arn :: Lude.Text,
    -- | The date and time that the distribution was last modified.
    lastModifiedTime :: Lude.Maybe Lude.DateTime,
    -- | The domain name that corresponds to the streaming distribution, for example, @s5c39gqb8ow64r.cloudfront.net@ .
    domainName :: Lude.Text,
    -- | The identifier for the RTMP distribution. For example: @EGTXBD79EXAMPLE@ .
    id :: Lude.Text,
    -- | A complex type that lists the AWS accounts, if any, that you included in the @TrustedSigners@ complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.
    --
    -- The @Signer@ complex type lists the AWS account number of the trusted signer or @self@ if the signer is the AWS account that created the distribution. The @Signer@ element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no @KeyPairId@ element appears for a @Signer@ , that signer can't create signed URLs.
    -- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving Private Content through CloudFront> in the /Amazon CloudFront Developer Guide/ .
    activeTrustedSigners :: ActiveTrustedSigners
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'StreamingDistribution' with the minimum fields required to make a request.
--
-- * 'status' - The current status of the RTMP distribution. When the status is @Deployed@ , the distribution's information is propagated to all CloudFront edge locations.
-- * 'streamingDistributionConfig' - The current configuration information for the RTMP distribution.
-- * 'arn' - The ARN (Amazon Resource Name) for the distribution. For example: @arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5@ , where @123456789012@ is your AWS account ID.
-- * 'lastModifiedTime' - The date and time that the distribution was last modified.
-- * 'domainName' - The domain name that corresponds to the streaming distribution, for example, @s5c39gqb8ow64r.cloudfront.net@ .
-- * 'id' - The identifier for the RTMP distribution. For example: @EGTXBD79EXAMPLE@ .
-- * 'activeTrustedSigners' - A complex type that lists the AWS accounts, if any, that you included in the @TrustedSigners@ complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.
--
-- The @Signer@ complex type lists the AWS account number of the trusted signer or @self@ if the signer is the AWS account that created the distribution. The @Signer@ element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no @KeyPairId@ element appears for a @Signer@ , that signer can't create signed URLs.
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving Private Content through CloudFront> in the /Amazon CloudFront Developer Guide/ .
mkStreamingDistribution ::
  -- | 'status'
  Lude.Text ->
  -- | 'streamingDistributionConfig'
  StreamingDistributionConfig ->
  -- | 'arn'
  Lude.Text ->
  -- | 'domainName'
  Lude.Text ->
  -- | 'id'
  Lude.Text ->
  -- | 'activeTrustedSigners'
  ActiveTrustedSigners ->
  StreamingDistribution
mkStreamingDistribution
  pStatus_
  pStreamingDistributionConfig_
  pARN_
  pDomainName_
  pId_
  pActiveTrustedSigners_ =
    StreamingDistribution'
      { status = pStatus_,
        streamingDistributionConfig = pStreamingDistributionConfig_,
        arn = pARN_,
        lastModifiedTime = Lude.Nothing,
        domainName = pDomainName_,
        id = pId_,
        activeTrustedSigners = pActiveTrustedSigners_
      }

-- | The current status of the RTMP distribution. When the status is @Deployed@ , the distribution's information is propagated to all CloudFront edge locations.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdStatus :: Lens.Lens' StreamingDistribution Lude.Text
sdStatus = Lens.lens (status :: StreamingDistribution -> Lude.Text) (\s a -> s {status = a} :: StreamingDistribution)
{-# DEPRECATED sdStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The current configuration information for the RTMP distribution.
--
-- /Note:/ Consider using 'streamingDistributionConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdStreamingDistributionConfig :: Lens.Lens' StreamingDistribution StreamingDistributionConfig
sdStreamingDistributionConfig = Lens.lens (streamingDistributionConfig :: StreamingDistribution -> StreamingDistributionConfig) (\s a -> s {streamingDistributionConfig = a} :: StreamingDistribution)
{-# DEPRECATED sdStreamingDistributionConfig "Use generic-lens or generic-optics with 'streamingDistributionConfig' instead." #-}

-- | The ARN (Amazon Resource Name) for the distribution. For example: @arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5@ , where @123456789012@ is your AWS account ID.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdARN :: Lens.Lens' StreamingDistribution Lude.Text
sdARN = Lens.lens (arn :: StreamingDistribution -> Lude.Text) (\s a -> s {arn = a} :: StreamingDistribution)
{-# DEPRECATED sdARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The date and time that the distribution was last modified.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdLastModifiedTime :: Lens.Lens' StreamingDistribution (Lude.Maybe Lude.DateTime)
sdLastModifiedTime = Lens.lens (lastModifiedTime :: StreamingDistribution -> Lude.Maybe Lude.DateTime) (\s a -> s {lastModifiedTime = a} :: StreamingDistribution)
{-# DEPRECATED sdLastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead." #-}

-- | The domain name that corresponds to the streaming distribution, for example, @s5c39gqb8ow64r.cloudfront.net@ .
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdDomainName :: Lens.Lens' StreamingDistribution Lude.Text
sdDomainName = Lens.lens (domainName :: StreamingDistribution -> Lude.Text) (\s a -> s {domainName = a} :: StreamingDistribution)
{-# DEPRECATED sdDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

-- | The identifier for the RTMP distribution. For example: @EGTXBD79EXAMPLE@ .
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdId :: Lens.Lens' StreamingDistribution Lude.Text
sdId = Lens.lens (id :: StreamingDistribution -> Lude.Text) (\s a -> s {id = a} :: StreamingDistribution)
{-# DEPRECATED sdId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | A complex type that lists the AWS accounts, if any, that you included in the @TrustedSigners@ complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.
--
-- The @Signer@ complex type lists the AWS account number of the trusted signer or @self@ if the signer is the AWS account that created the distribution. The @Signer@ element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no @KeyPairId@ element appears for a @Signer@ , that signer can't create signed URLs.
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving Private Content through CloudFront> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'activeTrustedSigners' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdActiveTrustedSigners :: Lens.Lens' StreamingDistribution ActiveTrustedSigners
sdActiveTrustedSigners = Lens.lens (activeTrustedSigners :: StreamingDistribution -> ActiveTrustedSigners) (\s a -> s {activeTrustedSigners = a} :: StreamingDistribution)
{-# DEPRECATED sdActiveTrustedSigners "Use generic-lens or generic-optics with 'activeTrustedSigners' instead." #-}

instance Lude.FromXML StreamingDistribution where
  parseXML x =
    StreamingDistribution'
      Lude.<$> (x Lude..@ "Status")
      Lude.<*> (x Lude..@ "StreamingDistributionConfig")
      Lude.<*> (x Lude..@ "ARN")
      Lude.<*> (x Lude..@? "LastModifiedTime")
      Lude.<*> (x Lude..@ "DomainName")
      Lude.<*> (x Lude..@ "Id")
      Lude.<*> (x Lude..@ "ActiveTrustedSigners")
