{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppMesh.DescribeVirtualGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an existing virtual gateway.
module Network.AWS.AppMesh.DescribeVirtualGateway
  ( -- * Creating a Request
    DescribeVirtualGateway (..),
    newDescribeVirtualGateway,

    -- * Request Lenses
    describeVirtualGateway_meshOwner,
    describeVirtualGateway_meshName,
    describeVirtualGateway_virtualGatewayName,

    -- * Destructuring the Response
    DescribeVirtualGatewayResponse (..),
    newDescribeVirtualGatewayResponse,

    -- * Response Lenses
    describeVirtualGatewayResponse_httpStatus,
    describeVirtualGatewayResponse_virtualGateway,
  )
where

import Network.AWS.AppMesh.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeVirtualGateway' smart constructor.
data DescribeVirtualGateway = DescribeVirtualGateway'
  { -- | The AWS IAM account ID of the service mesh owner. If the account ID is
    -- not your own, then it\'s the ID of the account that shared the mesh with
    -- your account. For more information about mesh sharing, see
    -- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
    meshOwner :: Prelude.Maybe Prelude.Text,
    -- | The name of the service mesh that the gateway route resides in.
    meshName :: Prelude.Text,
    -- | The name of the virtual gateway to describe.
    virtualGatewayName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVirtualGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meshOwner', 'describeVirtualGateway_meshOwner' - The AWS IAM account ID of the service mesh owner. If the account ID is
-- not your own, then it\'s the ID of the account that shared the mesh with
-- your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
--
-- 'meshName', 'describeVirtualGateway_meshName' - The name of the service mesh that the gateway route resides in.
--
-- 'virtualGatewayName', 'describeVirtualGateway_virtualGatewayName' - The name of the virtual gateway to describe.
newDescribeVirtualGateway ::
  -- | 'meshName'
  Prelude.Text ->
  -- | 'virtualGatewayName'
  Prelude.Text ->
  DescribeVirtualGateway
newDescribeVirtualGateway
  pMeshName_
  pVirtualGatewayName_ =
    DescribeVirtualGateway'
      { meshOwner =
          Prelude.Nothing,
        meshName = pMeshName_,
        virtualGatewayName = pVirtualGatewayName_
      }

-- | The AWS IAM account ID of the service mesh owner. If the account ID is
-- not your own, then it\'s the ID of the account that shared the mesh with
-- your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
describeVirtualGateway_meshOwner :: Lens.Lens' DescribeVirtualGateway (Prelude.Maybe Prelude.Text)
describeVirtualGateway_meshOwner = Lens.lens (\DescribeVirtualGateway' {meshOwner} -> meshOwner) (\s@DescribeVirtualGateway' {} a -> s {meshOwner = a} :: DescribeVirtualGateway)

-- | The name of the service mesh that the gateway route resides in.
describeVirtualGateway_meshName :: Lens.Lens' DescribeVirtualGateway Prelude.Text
describeVirtualGateway_meshName = Lens.lens (\DescribeVirtualGateway' {meshName} -> meshName) (\s@DescribeVirtualGateway' {} a -> s {meshName = a} :: DescribeVirtualGateway)

-- | The name of the virtual gateway to describe.
describeVirtualGateway_virtualGatewayName :: Lens.Lens' DescribeVirtualGateway Prelude.Text
describeVirtualGateway_virtualGatewayName = Lens.lens (\DescribeVirtualGateway' {virtualGatewayName} -> virtualGatewayName) (\s@DescribeVirtualGateway' {} a -> s {virtualGatewayName = a} :: DescribeVirtualGateway)

instance Core.AWSRequest DescribeVirtualGateway where
  type
    AWSResponse DescribeVirtualGateway =
      DescribeVirtualGatewayResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeVirtualGatewayResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Core.eitherParseJSON x)
      )

instance Prelude.Hashable DescribeVirtualGateway

instance Prelude.NFData DescribeVirtualGateway

instance Core.ToHeaders DescribeVirtualGateway where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeVirtualGateway where
  toPath DescribeVirtualGateway' {..} =
    Prelude.mconcat
      [ "/v20190125/meshes/",
        Core.toBS meshName,
        "/virtualGateways/",
        Core.toBS virtualGatewayName
      ]

instance Core.ToQuery DescribeVirtualGateway where
  toQuery DescribeVirtualGateway' {..} =
    Prelude.mconcat ["meshOwner" Core.=: meshOwner]

-- | /See:/ 'newDescribeVirtualGatewayResponse' smart constructor.
data DescribeVirtualGatewayResponse = DescribeVirtualGatewayResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The full description of your virtual gateway.
    virtualGateway :: VirtualGatewayData
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVirtualGatewayResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeVirtualGatewayResponse_httpStatus' - The response's http status code.
--
-- 'virtualGateway', 'describeVirtualGatewayResponse_virtualGateway' - The full description of your virtual gateway.
newDescribeVirtualGatewayResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'virtualGateway'
  VirtualGatewayData ->
  DescribeVirtualGatewayResponse
newDescribeVirtualGatewayResponse
  pHttpStatus_
  pVirtualGateway_ =
    DescribeVirtualGatewayResponse'
      { httpStatus =
          pHttpStatus_,
        virtualGateway = pVirtualGateway_
      }

-- | The response's http status code.
describeVirtualGatewayResponse_httpStatus :: Lens.Lens' DescribeVirtualGatewayResponse Prelude.Int
describeVirtualGatewayResponse_httpStatus = Lens.lens (\DescribeVirtualGatewayResponse' {httpStatus} -> httpStatus) (\s@DescribeVirtualGatewayResponse' {} a -> s {httpStatus = a} :: DescribeVirtualGatewayResponse)

-- | The full description of your virtual gateway.
describeVirtualGatewayResponse_virtualGateway :: Lens.Lens' DescribeVirtualGatewayResponse VirtualGatewayData
describeVirtualGatewayResponse_virtualGateway = Lens.lens (\DescribeVirtualGatewayResponse' {virtualGateway} -> virtualGateway) (\s@DescribeVirtualGatewayResponse' {} a -> s {virtualGateway = a} :: DescribeVirtualGatewayResponse)

instance
  Prelude.NFData
    DescribeVirtualGatewayResponse
