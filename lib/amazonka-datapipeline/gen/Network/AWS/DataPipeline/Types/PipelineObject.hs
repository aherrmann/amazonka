{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataPipeline.Types.PipelineObject
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.PipelineObject
  ( PipelineObject (..),

    -- * Smart constructor
    mkPipelineObject,

    -- * Lenses
    pName,
    pId,
    pFields,
  )
where

import Network.AWS.DataPipeline.Types.Field
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.
--
-- /See:/ 'mkPipelineObject' smart constructor.
data PipelineObject = PipelineObject'
  { -- | The name of the object.
    name :: Lude.Text,
    -- | The ID of the object.
    id :: Lude.Text,
    -- | Key-value pairs that define the properties of the object.
    fields :: [Field]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PipelineObject' with the minimum fields required to make a request.
--
-- * 'name' - The name of the object.
-- * 'id' - The ID of the object.
-- * 'fields' - Key-value pairs that define the properties of the object.
mkPipelineObject ::
  -- | 'name'
  Lude.Text ->
  -- | 'id'
  Lude.Text ->
  PipelineObject
mkPipelineObject pName_ pId_ =
  PipelineObject' {name = pName_, id = pId_, fields = Lude.mempty}

-- | The name of the object.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pName :: Lens.Lens' PipelineObject Lude.Text
pName = Lens.lens (name :: PipelineObject -> Lude.Text) (\s a -> s {name = a} :: PipelineObject)
{-# DEPRECATED pName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The ID of the object.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pId :: Lens.Lens' PipelineObject Lude.Text
pId = Lens.lens (id :: PipelineObject -> Lude.Text) (\s a -> s {id = a} :: PipelineObject)
{-# DEPRECATED pId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | Key-value pairs that define the properties of the object.
--
-- /Note:/ Consider using 'fields' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pFields :: Lens.Lens' PipelineObject [Field]
pFields = Lens.lens (fields :: PipelineObject -> [Field]) (\s a -> s {fields = a} :: PipelineObject)
{-# DEPRECATED pFields "Use generic-lens or generic-optics with 'fields' instead." #-}

instance Lude.FromJSON PipelineObject where
  parseJSON =
    Lude.withObject
      "PipelineObject"
      ( \x ->
          PipelineObject'
            Lude.<$> (x Lude..: "name")
            Lude.<*> (x Lude..: "id")
            Lude.<*> (x Lude..:? "fields" Lude..!= Lude.mempty)
      )

instance Lude.ToJSON PipelineObject where
  toJSON PipelineObject' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("name" Lude..= name),
            Lude.Just ("id" Lude..= id),
            Lude.Just ("fields" Lude..= fields)
          ]
      )
