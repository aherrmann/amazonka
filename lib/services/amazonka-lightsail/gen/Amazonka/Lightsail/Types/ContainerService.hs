{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Lightsail.Types.ContainerService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.ContainerService where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Lightsail.Types.ContainerServiceDeployment
import Amazonka.Lightsail.Types.ContainerServicePowerName
import Amazonka.Lightsail.Types.ContainerServiceState
import Amazonka.Lightsail.Types.ContainerServiceStateDetail
import Amazonka.Lightsail.Types.ResourceLocation
import Amazonka.Lightsail.Types.ResourceType
import Amazonka.Lightsail.Types.Tag
import qualified Amazonka.Prelude as Prelude

-- | Describes an Amazon Lightsail container service.
--
-- /See:/ 'newContainerService' smart constructor.
data ContainerService = ContainerService'
  { -- | The current state of the container service.
    --
    -- The following container service states are possible:
    --
    -- -   @PENDING@ - The container service is being created.
    --
    -- -   @READY@ - The container service is running but it does not have an
    --     active container deployment.
    --
    -- -   @DEPLOYING@ - The container service is launching a container
    --     deployment.
    --
    -- -   @RUNNING@ - The container service is running and it has an active
    --     container deployment.
    --
    -- -   @UPDATING@ - The container service capacity or its custom domains
    --     are being updated.
    --
    -- -   @DELETING@ - The container service is being deleted.
    --
    -- -   @DISABLED@ - The container service is disabled, and its active
    --     deployment and containers, if any, are shut down.
    state :: Prelude.Maybe ContainerServiceState,
    -- | The ID of the power of the container service.
    powerId :: Prelude.Maybe Prelude.Text,
    -- | The Lightsail resource type of the container service (i.e.,
    -- @ContainerService@).
    resourceType :: Prelude.Maybe ResourceType,
    -- | The Amazon Resource Name (ARN) of the container service.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when the container service was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | An object that describes the location of the container service, such as
    -- the AWS Region and Availability Zone.
    location :: Prelude.Maybe ResourceLocation,
    -- | The scale specification of the container service.
    --
    -- The scale specifies the allocated compute nodes of the container
    -- service.
    scale :: Prelude.Maybe Prelude.Natural,
    -- | The publicly accessible URL of the container service.
    --
    -- If no public endpoint is specified in the @currentDeployment@, this URL
    -- returns a 404 response.
    url :: Prelude.Maybe Prelude.Text,
    -- | An object that describes the current state of the container service.
    --
    -- The state detail is populated only when a container service is in a
    -- @PENDING@, @DEPLOYING@, or @UPDATING@ state.
    stateDetail :: Prelude.Maybe ContainerServiceStateDetail,
    -- | An object that describes the next deployment of the container service.
    --
    -- This value is @null@ when there is no deployment in a @pending@ state.
    nextDeployment :: Prelude.Maybe ContainerServiceDeployment,
    -- | The principal ARN of the container service.
    --
    -- The principal ARN can be used to create a trust relationship between
    -- your standard AWS account and your Lightsail container service. This
    -- allows you to give your service permission to access resources in your
    -- standard AWS account.
    principalArn :: Prelude.Maybe Prelude.Text,
    -- | The power specification of the container service.
    --
    -- The power specifies the amount of RAM, the number of vCPUs, and the base
    -- price of the container service.
    power :: Prelude.Maybe ContainerServicePowerName,
    -- | The private domain name of the container service.
    --
    -- The private domain name is accessible only by other resources within the
    -- default virtual private cloud (VPC) of your Lightsail account.
    privateDomainName :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value indicating whether the container service is disabled.
    isDisabled :: Prelude.Maybe Prelude.Bool,
    -- | The public domain name of the container service, such as @example.com@
    -- and @www.example.com@.
    --
    -- You can specify up to four public domain names for a container service.
    -- The domain names that you specify are used when you create a deployment
    -- with a container configured as the public endpoint of your container
    -- service.
    --
    -- If you don\'t specify public domain names, then you can use the default
    -- domain of the container service.
    --
    -- You must create and validate an SSL\/TLS certificate before you can use
    -- public domain names with your container service. Use the
    -- @CreateCertificate@ action to create a certificate for the public domain
    -- names you want to use with your container service.
    --
    -- See @CreateContainerService@ or @UpdateContainerService@ for information
    -- about how to specify public domain names for your Lightsail container
    -- service.
    publicDomainNames :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | The name of the container service.
    containerServiceName :: Prelude.Maybe Prelude.Text,
    -- | An object that describes the current container deployment of the
    -- container service.
    currentDeployment :: Prelude.Maybe ContainerServiceDeployment,
    -- | The tag keys and optional values for the resource. For more information
    -- about tags in Lightsail, see the
    -- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
    tags :: Prelude.Maybe [Tag]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContainerService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'containerService_state' - The current state of the container service.
--
-- The following container service states are possible:
--
-- -   @PENDING@ - The container service is being created.
--
-- -   @READY@ - The container service is running but it does not have an
--     active container deployment.
--
-- -   @DEPLOYING@ - The container service is launching a container
--     deployment.
--
-- -   @RUNNING@ - The container service is running and it has an active
--     container deployment.
--
-- -   @UPDATING@ - The container service capacity or its custom domains
--     are being updated.
--
-- -   @DELETING@ - The container service is being deleted.
--
-- -   @DISABLED@ - The container service is disabled, and its active
--     deployment and containers, if any, are shut down.
--
-- 'powerId', 'containerService_powerId' - The ID of the power of the container service.
--
-- 'resourceType', 'containerService_resourceType' - The Lightsail resource type of the container service (i.e.,
-- @ContainerService@).
--
-- 'arn', 'containerService_arn' - The Amazon Resource Name (ARN) of the container service.
--
-- 'createdAt', 'containerService_createdAt' - The timestamp when the container service was created.
--
-- 'location', 'containerService_location' - An object that describes the location of the container service, such as
-- the AWS Region and Availability Zone.
--
-- 'scale', 'containerService_scale' - The scale specification of the container service.
--
-- The scale specifies the allocated compute nodes of the container
-- service.
--
-- 'url', 'containerService_url' - The publicly accessible URL of the container service.
--
-- If no public endpoint is specified in the @currentDeployment@, this URL
-- returns a 404 response.
--
-- 'stateDetail', 'containerService_stateDetail' - An object that describes the current state of the container service.
--
-- The state detail is populated only when a container service is in a
-- @PENDING@, @DEPLOYING@, or @UPDATING@ state.
--
-- 'nextDeployment', 'containerService_nextDeployment' - An object that describes the next deployment of the container service.
--
-- This value is @null@ when there is no deployment in a @pending@ state.
--
-- 'principalArn', 'containerService_principalArn' - The principal ARN of the container service.
--
-- The principal ARN can be used to create a trust relationship between
-- your standard AWS account and your Lightsail container service. This
-- allows you to give your service permission to access resources in your
-- standard AWS account.
--
-- 'power', 'containerService_power' - The power specification of the container service.
--
-- The power specifies the amount of RAM, the number of vCPUs, and the base
-- price of the container service.
--
-- 'privateDomainName', 'containerService_privateDomainName' - The private domain name of the container service.
--
-- The private domain name is accessible only by other resources within the
-- default virtual private cloud (VPC) of your Lightsail account.
--
-- 'isDisabled', 'containerService_isDisabled' - A Boolean value indicating whether the container service is disabled.
--
-- 'publicDomainNames', 'containerService_publicDomainNames' - The public domain name of the container service, such as @example.com@
-- and @www.example.com@.
--
-- You can specify up to four public domain names for a container service.
-- The domain names that you specify are used when you create a deployment
-- with a container configured as the public endpoint of your container
-- service.
--
-- If you don\'t specify public domain names, then you can use the default
-- domain of the container service.
--
-- You must create and validate an SSL\/TLS certificate before you can use
-- public domain names with your container service. Use the
-- @CreateCertificate@ action to create a certificate for the public domain
-- names you want to use with your container service.
--
-- See @CreateContainerService@ or @UpdateContainerService@ for information
-- about how to specify public domain names for your Lightsail container
-- service.
--
-- 'containerServiceName', 'containerService_containerServiceName' - The name of the container service.
--
-- 'currentDeployment', 'containerService_currentDeployment' - An object that describes the current container deployment of the
-- container service.
--
-- 'tags', 'containerService_tags' - The tag keys and optional values for the resource. For more information
-- about tags in Lightsail, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
newContainerService ::
  ContainerService
newContainerService =
  ContainerService'
    { state = Prelude.Nothing,
      powerId = Prelude.Nothing,
      resourceType = Prelude.Nothing,
      arn = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      location = Prelude.Nothing,
      scale = Prelude.Nothing,
      url = Prelude.Nothing,
      stateDetail = Prelude.Nothing,
      nextDeployment = Prelude.Nothing,
      principalArn = Prelude.Nothing,
      power = Prelude.Nothing,
      privateDomainName = Prelude.Nothing,
      isDisabled = Prelude.Nothing,
      publicDomainNames = Prelude.Nothing,
      containerServiceName = Prelude.Nothing,
      currentDeployment = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The current state of the container service.
--
-- The following container service states are possible:
--
-- -   @PENDING@ - The container service is being created.
--
-- -   @READY@ - The container service is running but it does not have an
--     active container deployment.
--
-- -   @DEPLOYING@ - The container service is launching a container
--     deployment.
--
-- -   @RUNNING@ - The container service is running and it has an active
--     container deployment.
--
-- -   @UPDATING@ - The container service capacity or its custom domains
--     are being updated.
--
-- -   @DELETING@ - The container service is being deleted.
--
-- -   @DISABLED@ - The container service is disabled, and its active
--     deployment and containers, if any, are shut down.
containerService_state :: Lens.Lens' ContainerService (Prelude.Maybe ContainerServiceState)
containerService_state = Lens.lens (\ContainerService' {state} -> state) (\s@ContainerService' {} a -> s {state = a} :: ContainerService)

-- | The ID of the power of the container service.
containerService_powerId :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Text)
containerService_powerId = Lens.lens (\ContainerService' {powerId} -> powerId) (\s@ContainerService' {} a -> s {powerId = a} :: ContainerService)

-- | The Lightsail resource type of the container service (i.e.,
-- @ContainerService@).
containerService_resourceType :: Lens.Lens' ContainerService (Prelude.Maybe ResourceType)
containerService_resourceType = Lens.lens (\ContainerService' {resourceType} -> resourceType) (\s@ContainerService' {} a -> s {resourceType = a} :: ContainerService)

-- | The Amazon Resource Name (ARN) of the container service.
containerService_arn :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Text)
containerService_arn = Lens.lens (\ContainerService' {arn} -> arn) (\s@ContainerService' {} a -> s {arn = a} :: ContainerService)

-- | The timestamp when the container service was created.
containerService_createdAt :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.UTCTime)
containerService_createdAt = Lens.lens (\ContainerService' {createdAt} -> createdAt) (\s@ContainerService' {} a -> s {createdAt = a} :: ContainerService) Prelude.. Lens.mapping Core._Time

-- | An object that describes the location of the container service, such as
-- the AWS Region and Availability Zone.
containerService_location :: Lens.Lens' ContainerService (Prelude.Maybe ResourceLocation)
containerService_location = Lens.lens (\ContainerService' {location} -> location) (\s@ContainerService' {} a -> s {location = a} :: ContainerService)

-- | The scale specification of the container service.
--
-- The scale specifies the allocated compute nodes of the container
-- service.
containerService_scale :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Natural)
containerService_scale = Lens.lens (\ContainerService' {scale} -> scale) (\s@ContainerService' {} a -> s {scale = a} :: ContainerService)

-- | The publicly accessible URL of the container service.
--
-- If no public endpoint is specified in the @currentDeployment@, this URL
-- returns a 404 response.
containerService_url :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Text)
containerService_url = Lens.lens (\ContainerService' {url} -> url) (\s@ContainerService' {} a -> s {url = a} :: ContainerService)

-- | An object that describes the current state of the container service.
--
-- The state detail is populated only when a container service is in a
-- @PENDING@, @DEPLOYING@, or @UPDATING@ state.
containerService_stateDetail :: Lens.Lens' ContainerService (Prelude.Maybe ContainerServiceStateDetail)
containerService_stateDetail = Lens.lens (\ContainerService' {stateDetail} -> stateDetail) (\s@ContainerService' {} a -> s {stateDetail = a} :: ContainerService)

-- | An object that describes the next deployment of the container service.
--
-- This value is @null@ when there is no deployment in a @pending@ state.
containerService_nextDeployment :: Lens.Lens' ContainerService (Prelude.Maybe ContainerServiceDeployment)
containerService_nextDeployment = Lens.lens (\ContainerService' {nextDeployment} -> nextDeployment) (\s@ContainerService' {} a -> s {nextDeployment = a} :: ContainerService)

-- | The principal ARN of the container service.
--
-- The principal ARN can be used to create a trust relationship between
-- your standard AWS account and your Lightsail container service. This
-- allows you to give your service permission to access resources in your
-- standard AWS account.
containerService_principalArn :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Text)
containerService_principalArn = Lens.lens (\ContainerService' {principalArn} -> principalArn) (\s@ContainerService' {} a -> s {principalArn = a} :: ContainerService)

-- | The power specification of the container service.
--
-- The power specifies the amount of RAM, the number of vCPUs, and the base
-- price of the container service.
containerService_power :: Lens.Lens' ContainerService (Prelude.Maybe ContainerServicePowerName)
containerService_power = Lens.lens (\ContainerService' {power} -> power) (\s@ContainerService' {} a -> s {power = a} :: ContainerService)

-- | The private domain name of the container service.
--
-- The private domain name is accessible only by other resources within the
-- default virtual private cloud (VPC) of your Lightsail account.
containerService_privateDomainName :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Text)
containerService_privateDomainName = Lens.lens (\ContainerService' {privateDomainName} -> privateDomainName) (\s@ContainerService' {} a -> s {privateDomainName = a} :: ContainerService)

-- | A Boolean value indicating whether the container service is disabled.
containerService_isDisabled :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Bool)
containerService_isDisabled = Lens.lens (\ContainerService' {isDisabled} -> isDisabled) (\s@ContainerService' {} a -> s {isDisabled = a} :: ContainerService)

-- | The public domain name of the container service, such as @example.com@
-- and @www.example.com@.
--
-- You can specify up to four public domain names for a container service.
-- The domain names that you specify are used when you create a deployment
-- with a container configured as the public endpoint of your container
-- service.
--
-- If you don\'t specify public domain names, then you can use the default
-- domain of the container service.
--
-- You must create and validate an SSL\/TLS certificate before you can use
-- public domain names with your container service. Use the
-- @CreateCertificate@ action to create a certificate for the public domain
-- names you want to use with your container service.
--
-- See @CreateContainerService@ or @UpdateContainerService@ for information
-- about how to specify public domain names for your Lightsail container
-- service.
containerService_publicDomainNames :: Lens.Lens' ContainerService (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
containerService_publicDomainNames = Lens.lens (\ContainerService' {publicDomainNames} -> publicDomainNames) (\s@ContainerService' {} a -> s {publicDomainNames = a} :: ContainerService) Prelude.. Lens.mapping Lens.coerced

-- | The name of the container service.
containerService_containerServiceName :: Lens.Lens' ContainerService (Prelude.Maybe Prelude.Text)
containerService_containerServiceName = Lens.lens (\ContainerService' {containerServiceName} -> containerServiceName) (\s@ContainerService' {} a -> s {containerServiceName = a} :: ContainerService)

-- | An object that describes the current container deployment of the
-- container service.
containerService_currentDeployment :: Lens.Lens' ContainerService (Prelude.Maybe ContainerServiceDeployment)
containerService_currentDeployment = Lens.lens (\ContainerService' {currentDeployment} -> currentDeployment) (\s@ContainerService' {} a -> s {currentDeployment = a} :: ContainerService)

-- | The tag keys and optional values for the resource. For more information
-- about tags in Lightsail, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
containerService_tags :: Lens.Lens' ContainerService (Prelude.Maybe [Tag])
containerService_tags = Lens.lens (\ContainerService' {tags} -> tags) (\s@ContainerService' {} a -> s {tags = a} :: ContainerService) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ContainerService where
  parseJSON =
    Core.withObject
      "ContainerService"
      ( \x ->
          ContainerService'
            Prelude.<$> (x Core..:? "state")
            Prelude.<*> (x Core..:? "powerId")
            Prelude.<*> (x Core..:? "resourceType")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "location")
            Prelude.<*> (x Core..:? "scale")
            Prelude.<*> (x Core..:? "url")
            Prelude.<*> (x Core..:? "stateDetail")
            Prelude.<*> (x Core..:? "nextDeployment")
            Prelude.<*> (x Core..:? "principalArn")
            Prelude.<*> (x Core..:? "power")
            Prelude.<*> (x Core..:? "privateDomainName")
            Prelude.<*> (x Core..:? "isDisabled")
            Prelude.<*> ( x Core..:? "publicDomainNames"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "containerServiceName")
            Prelude.<*> (x Core..:? "currentDeployment")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ContainerService where
  hashWithSalt salt' ContainerService' {..} =
    salt' `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` currentDeployment
      `Prelude.hashWithSalt` containerServiceName
      `Prelude.hashWithSalt` publicDomainNames
      `Prelude.hashWithSalt` isDisabled
      `Prelude.hashWithSalt` privateDomainName
      `Prelude.hashWithSalt` power
      `Prelude.hashWithSalt` principalArn
      `Prelude.hashWithSalt` nextDeployment
      `Prelude.hashWithSalt` stateDetail
      `Prelude.hashWithSalt` url
      `Prelude.hashWithSalt` scale
      `Prelude.hashWithSalt` location
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` powerId
      `Prelude.hashWithSalt` state

instance Prelude.NFData ContainerService where
  rnf ContainerService' {..} =
    Prelude.rnf state `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf currentDeployment
      `Prelude.seq` Prelude.rnf containerServiceName
      `Prelude.seq` Prelude.rnf publicDomainNames
      `Prelude.seq` Prelude.rnf isDisabled
      `Prelude.seq` Prelude.rnf privateDomainName
      `Prelude.seq` Prelude.rnf power
      `Prelude.seq` Prelude.rnf principalArn
      `Prelude.seq` Prelude.rnf nextDeployment
      `Prelude.seq` Prelude.rnf stateDetail
      `Prelude.seq` Prelude.rnf url
      `Prelude.seq` Prelude.rnf scale
      `Prelude.seq` Prelude.rnf location
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf powerId
