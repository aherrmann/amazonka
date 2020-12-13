{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.XMLClassifier
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.XMLClassifier
  ( XMLClassifier (..),

    -- * Smart constructor
    mkXMLClassifier,

    -- * Lenses
    xcCreationTime,
    xcLastUpdated,
    xcClassification,
    xcName,
    xcVersion,
    xcRowTag,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A classifier for @XML@ content.
--
-- /See:/ 'mkXMLClassifier' smart constructor.
data XMLClassifier = XMLClassifier'
  { -- | The time that this classifier was registered.
    creationTime :: Lude.Maybe Lude.Timestamp,
    -- | The time that this classifier was last updated.
    lastUpdated :: Lude.Maybe Lude.Timestamp,
    -- | An identifier of the data format that the classifier matches.
    classification :: Lude.Text,
    -- | The name of the classifier.
    name :: Lude.Text,
    -- | The version of this classifier.
    version :: Lude.Maybe Lude.Integer,
    -- | The XML tag designating the element that contains each record in an XML document being parsed. This can't identify a self-closing element (closed by @/>@ ). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, @<row item_a="A" item_b="B"></row>@ is okay, but @<row item_a="A" item_b="B" />@ is not).
    rowTag :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'XMLClassifier' with the minimum fields required to make a request.
--
-- * 'creationTime' - The time that this classifier was registered.
-- * 'lastUpdated' - The time that this classifier was last updated.
-- * 'classification' - An identifier of the data format that the classifier matches.
-- * 'name' - The name of the classifier.
-- * 'version' - The version of this classifier.
-- * 'rowTag' - The XML tag designating the element that contains each record in an XML document being parsed. This can't identify a self-closing element (closed by @/>@ ). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, @<row item_a="A" item_b="B"></row>@ is okay, but @<row item_a="A" item_b="B" />@ is not).
mkXMLClassifier ::
  -- | 'classification'
  Lude.Text ->
  -- | 'name'
  Lude.Text ->
  XMLClassifier
mkXMLClassifier pClassification_ pName_ =
  XMLClassifier'
    { creationTime = Lude.Nothing,
      lastUpdated = Lude.Nothing,
      classification = pClassification_,
      name = pName_,
      version = Lude.Nothing,
      rowTag = Lude.Nothing
    }

-- | The time that this classifier was registered.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xcCreationTime :: Lens.Lens' XMLClassifier (Lude.Maybe Lude.Timestamp)
xcCreationTime = Lens.lens (creationTime :: XMLClassifier -> Lude.Maybe Lude.Timestamp) (\s a -> s {creationTime = a} :: XMLClassifier)
{-# DEPRECATED xcCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

-- | The time that this classifier was last updated.
--
-- /Note:/ Consider using 'lastUpdated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xcLastUpdated :: Lens.Lens' XMLClassifier (Lude.Maybe Lude.Timestamp)
xcLastUpdated = Lens.lens (lastUpdated :: XMLClassifier -> Lude.Maybe Lude.Timestamp) (\s a -> s {lastUpdated = a} :: XMLClassifier)
{-# DEPRECATED xcLastUpdated "Use generic-lens or generic-optics with 'lastUpdated' instead." #-}

-- | An identifier of the data format that the classifier matches.
--
-- /Note:/ Consider using 'classification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xcClassification :: Lens.Lens' XMLClassifier Lude.Text
xcClassification = Lens.lens (classification :: XMLClassifier -> Lude.Text) (\s a -> s {classification = a} :: XMLClassifier)
{-# DEPRECATED xcClassification "Use generic-lens or generic-optics with 'classification' instead." #-}

-- | The name of the classifier.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xcName :: Lens.Lens' XMLClassifier Lude.Text
xcName = Lens.lens (name :: XMLClassifier -> Lude.Text) (\s a -> s {name = a} :: XMLClassifier)
{-# DEPRECATED xcName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The version of this classifier.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xcVersion :: Lens.Lens' XMLClassifier (Lude.Maybe Lude.Integer)
xcVersion = Lens.lens (version :: XMLClassifier -> Lude.Maybe Lude.Integer) (\s a -> s {version = a} :: XMLClassifier)
{-# DEPRECATED xcVersion "Use generic-lens or generic-optics with 'version' instead." #-}

-- | The XML tag designating the element that contains each record in an XML document being parsed. This can't identify a self-closing element (closed by @/>@ ). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, @<row item_a="A" item_b="B"></row>@ is okay, but @<row item_a="A" item_b="B" />@ is not).
--
-- /Note:/ Consider using 'rowTag' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xcRowTag :: Lens.Lens' XMLClassifier (Lude.Maybe Lude.Text)
xcRowTag = Lens.lens (rowTag :: XMLClassifier -> Lude.Maybe Lude.Text) (\s a -> s {rowTag = a} :: XMLClassifier)
{-# DEPRECATED xcRowTag "Use generic-lens or generic-optics with 'rowTag' instead." #-}

instance Lude.FromJSON XMLClassifier where
  parseJSON =
    Lude.withObject
      "XMLClassifier"
      ( \x ->
          XMLClassifier'
            Lude.<$> (x Lude..:? "CreationTime")
            Lude.<*> (x Lude..:? "LastUpdated")
            Lude.<*> (x Lude..: "Classification")
            Lude.<*> (x Lude..: "Name")
            Lude.<*> (x Lude..:? "Version")
            Lude.<*> (x Lude..:? "RowTag")
      )
