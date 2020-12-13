{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.InstanceProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.InstanceProfile
  ( InstanceProfile (..),

    -- * Smart constructor
    mkInstanceProfile,

    -- * Lenses
    ipRoles,
    ipARN,
    ipPath,
    ipCreateDate,
    ipInstanceProfileId,
    ipInstanceProfileName,
  )
where

import Network.AWS.IAM.Types.Role
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about an instance profile.
--
-- This data type is used as a response element in the following operations:
--
--     * 'CreateInstanceProfile'
--
--
--     * 'GetInstanceProfile'
--
--
--     * 'ListInstanceProfiles'
--
--
--     * 'ListInstanceProfilesForRole'
--
--
--
-- /See:/ 'mkInstanceProfile' smart constructor.
data InstanceProfile = InstanceProfile'
  { -- | The role associated with the instance profile.
    roles :: [Role],
    -- | The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
    arn :: Lude.Text,
    -- | The path to the instance profile. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
    path :: Lude.Text,
    -- | The date when the instance profile was created.
    createDate :: Lude.DateTime,
    -- | The stable and unique string identifying the instance profile. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
    instanceProfileId :: Lude.Text,
    -- | The name identifying the instance profile.
    instanceProfileName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'InstanceProfile' with the minimum fields required to make a request.
--
-- * 'roles' - The role associated with the instance profile.
-- * 'arn' - The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
-- * 'path' - The path to the instance profile. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
-- * 'createDate' - The date when the instance profile was created.
-- * 'instanceProfileId' - The stable and unique string identifying the instance profile. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
-- * 'instanceProfileName' - The name identifying the instance profile.
mkInstanceProfile ::
  -- | 'arn'
  Lude.Text ->
  -- | 'path'
  Lude.Text ->
  -- | 'createDate'
  Lude.DateTime ->
  -- | 'instanceProfileId'
  Lude.Text ->
  -- | 'instanceProfileName'
  Lude.Text ->
  InstanceProfile
mkInstanceProfile
  pARN_
  pPath_
  pCreateDate_
  pInstanceProfileId_
  pInstanceProfileName_ =
    InstanceProfile'
      { roles = Lude.mempty,
        arn = pARN_,
        path = pPath_,
        createDate = pCreateDate_,
        instanceProfileId = pInstanceProfileId_,
        instanceProfileName = pInstanceProfileName_
      }

-- | The role associated with the instance profile.
--
-- /Note:/ Consider using 'roles' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipRoles :: Lens.Lens' InstanceProfile [Role]
ipRoles = Lens.lens (roles :: InstanceProfile -> [Role]) (\s a -> s {roles = a} :: InstanceProfile)
{-# DEPRECATED ipRoles "Use generic-lens or generic-optics with 'roles' instead." #-}

-- | The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipARN :: Lens.Lens' InstanceProfile Lude.Text
ipARN = Lens.lens (arn :: InstanceProfile -> Lude.Text) (\s a -> s {arn = a} :: InstanceProfile)
{-# DEPRECATED ipARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The path to the instance profile. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
--
-- /Note:/ Consider using 'path' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipPath :: Lens.Lens' InstanceProfile Lude.Text
ipPath = Lens.lens (path :: InstanceProfile -> Lude.Text) (\s a -> s {path = a} :: InstanceProfile)
{-# DEPRECATED ipPath "Use generic-lens or generic-optics with 'path' instead." #-}

-- | The date when the instance profile was created.
--
-- /Note:/ Consider using 'createDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipCreateDate :: Lens.Lens' InstanceProfile Lude.DateTime
ipCreateDate = Lens.lens (createDate :: InstanceProfile -> Lude.DateTime) (\s a -> s {createDate = a} :: InstanceProfile)
{-# DEPRECATED ipCreateDate "Use generic-lens or generic-optics with 'createDate' instead." #-}

-- | The stable and unique string identifying the instance profile. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
--
-- /Note:/ Consider using 'instanceProfileId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipInstanceProfileId :: Lens.Lens' InstanceProfile Lude.Text
ipInstanceProfileId = Lens.lens (instanceProfileId :: InstanceProfile -> Lude.Text) (\s a -> s {instanceProfileId = a} :: InstanceProfile)
{-# DEPRECATED ipInstanceProfileId "Use generic-lens or generic-optics with 'instanceProfileId' instead." #-}

-- | The name identifying the instance profile.
--
-- /Note:/ Consider using 'instanceProfileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ipInstanceProfileName :: Lens.Lens' InstanceProfile Lude.Text
ipInstanceProfileName = Lens.lens (instanceProfileName :: InstanceProfile -> Lude.Text) (\s a -> s {instanceProfileName = a} :: InstanceProfile)
{-# DEPRECATED ipInstanceProfileName "Use generic-lens or generic-optics with 'instanceProfileName' instead." #-}

instance Lude.FromXML InstanceProfile where
  parseXML x =
    InstanceProfile'
      Lude.<$> ( x Lude..@? "Roles" Lude..!@ Lude.mempty
                   Lude.>>= Lude.parseXMLList "member"
               )
      Lude.<*> (x Lude..@ "Arn")
      Lude.<*> (x Lude..@ "Path")
      Lude.<*> (x Lude..@ "CreateDate")
      Lude.<*> (x Lude..@ "InstanceProfileId")
      Lude.<*> (x Lude..@ "InstanceProfileName")
