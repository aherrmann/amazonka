{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.DeleteMedicalTranscriptionJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a transcription job generated by Amazon Transcribe Medical and any related information.
module Network.AWS.Transcribe.DeleteMedicalTranscriptionJob
  ( -- * Creating a request
    DeleteMedicalTranscriptionJob (..),
    mkDeleteMedicalTranscriptionJob,

    -- ** Request lenses
    dmtjMedicalTranscriptionJobName,

    -- * Destructuring the response
    DeleteMedicalTranscriptionJobResponse (..),
    mkDeleteMedicalTranscriptionJobResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.Transcribe.Types

-- | /See:/ 'mkDeleteMedicalTranscriptionJob' smart constructor.
newtype DeleteMedicalTranscriptionJob = DeleteMedicalTranscriptionJob'
  { -- | The name you provide to the @DeleteMedicalTranscriptionJob@ object to delete a transcription job.
    medicalTranscriptionJobName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteMedicalTranscriptionJob' with the minimum fields required to make a request.
--
-- * 'medicalTranscriptionJobName' - The name you provide to the @DeleteMedicalTranscriptionJob@ object to delete a transcription job.
mkDeleteMedicalTranscriptionJob ::
  -- | 'medicalTranscriptionJobName'
  Lude.Text ->
  DeleteMedicalTranscriptionJob
mkDeleteMedicalTranscriptionJob pMedicalTranscriptionJobName_ =
  DeleteMedicalTranscriptionJob'
    { medicalTranscriptionJobName =
        pMedicalTranscriptionJobName_
    }

-- | The name you provide to the @DeleteMedicalTranscriptionJob@ object to delete a transcription job.
--
-- /Note:/ Consider using 'medicalTranscriptionJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dmtjMedicalTranscriptionJobName :: Lens.Lens' DeleteMedicalTranscriptionJob Lude.Text
dmtjMedicalTranscriptionJobName = Lens.lens (medicalTranscriptionJobName :: DeleteMedicalTranscriptionJob -> Lude.Text) (\s a -> s {medicalTranscriptionJobName = a} :: DeleteMedicalTranscriptionJob)
{-# DEPRECATED dmtjMedicalTranscriptionJobName "Use generic-lens or generic-optics with 'medicalTranscriptionJobName' instead." #-}

instance Lude.AWSRequest DeleteMedicalTranscriptionJob where
  type
    Rs DeleteMedicalTranscriptionJob =
      DeleteMedicalTranscriptionJobResponse
  request = Req.postJSON transcribeService
  response = Res.receiveNull DeleteMedicalTranscriptionJobResponse'

instance Lude.ToHeaders DeleteMedicalTranscriptionJob where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("Transcribe.DeleteMedicalTranscriptionJob" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeleteMedicalTranscriptionJob where
  toJSON DeleteMedicalTranscriptionJob' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just
              ( "MedicalTranscriptionJobName"
                  Lude..= medicalTranscriptionJobName
              )
          ]
      )

instance Lude.ToPath DeleteMedicalTranscriptionJob where
  toPath = Lude.const "/"

instance Lude.ToQuery DeleteMedicalTranscriptionJob where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteMedicalTranscriptionJobResponse' smart constructor.
data DeleteMedicalTranscriptionJobResponse = DeleteMedicalTranscriptionJobResponse'
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteMedicalTranscriptionJobResponse' with the minimum fields required to make a request.
mkDeleteMedicalTranscriptionJobResponse ::
  DeleteMedicalTranscriptionJobResponse
mkDeleteMedicalTranscriptionJobResponse =
  DeleteMedicalTranscriptionJobResponse'
