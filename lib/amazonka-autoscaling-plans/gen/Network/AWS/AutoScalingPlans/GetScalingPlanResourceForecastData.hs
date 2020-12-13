{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the forecast data for a scalable resource.
--
-- Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days.
module Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData
  ( -- * Creating a request
    GetScalingPlanResourceForecastData (..),
    mkGetScalingPlanResourceForecastData,

    -- ** Request lenses
    gsprfdScalingPlanVersion,
    gsprfdScalableDimension,
    gsprfdResourceId,
    gsprfdStartTime,
    gsprfdServiceNamespace,
    gsprfdScalingPlanName,
    gsprfdEndTime,
    gsprfdForecastDataType,

    -- * Destructuring the response
    GetScalingPlanResourceForecastDataResponse (..),
    mkGetScalingPlanResourceForecastDataResponse,

    -- ** Response lenses
    gsprfdrsDatapoints,
    gsprfdrsResponseStatus,
  )
where

import Network.AWS.AutoScalingPlans.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetScalingPlanResourceForecastData' smart constructor.
data GetScalingPlanResourceForecastData = GetScalingPlanResourceForecastData'
  { -- | The version number of the scaling plan.
    scalingPlanVersion :: Lude.Integer,
    -- | The scalable dimension for the resource.
    scalableDimension :: ScalableDimension,
    -- | The ID of the resource. This string consists of the resource type and unique identifier.
    --
    --
    --     * Auto Scaling group - The resource type is @autoScalingGroup@ and the unique identifier is the name of the Auto Scaling group. Example: @autoScalingGroup/my-asg@ .
    --
    --
    --     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .
    --
    --
    --     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .
    --
    --
    --     * DynamoDB table - The resource type is @table@ and the unique identifier is the resource ID. Example: @table/my-table@ .
    --
    --
    --     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the resource ID. Example: @table/my-table/index/my-table-index@ .
    --
    --
    --     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .
    resourceId :: Lude.Text,
    -- | The inclusive start time of the time range for the forecast data to get. The date and time can be at most 56 days before the current date and time.
    startTime :: Lude.Timestamp,
    -- | The namespace of the AWS service.
    serviceNamespace :: ServiceNamespace,
    -- | The name of the scaling plan.
    scalingPlanName :: Lude.Text,
    -- | The exclusive end time of the time range for the forecast data to get. The maximum time duration between the start and end time is seven days.
    --
    -- Although this parameter can accept a date and time that is more than two days in the future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for periods of two days in advance.
    endTime :: Lude.Timestamp,
    -- | The type of forecast data to get.
    --
    --
    --     * @LoadForecast@ : The load metric forecast.
    --
    --
    --     * @CapacityForecast@ : The capacity forecast.
    --
    --
    --     * @ScheduledActionMinCapacity@ : The minimum capacity for each scheduled scaling action. This data is calculated as the larger of two values: the capacity forecast or the minimum capacity in the scaling instruction.
    --
    --
    --     * @ScheduledActionMaxCapacity@ : The maximum capacity for each scheduled scaling action. The calculation used is determined by the predictive scaling maximum capacity behavior setting in the scaling instruction.
    forecastDataType :: ForecastDataType
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetScalingPlanResourceForecastData' with the minimum fields required to make a request.
--
-- * 'scalingPlanVersion' - The version number of the scaling plan.
-- * 'scalableDimension' - The scalable dimension for the resource.
-- * 'resourceId' - The ID of the resource. This string consists of the resource type and unique identifier.
--
--
--     * Auto Scaling group - The resource type is @autoScalingGroup@ and the unique identifier is the name of the Auto Scaling group. Example: @autoScalingGroup/my-asg@ .
--
--
--     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .
--
--
--     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .
--
--
--     * DynamoDB table - The resource type is @table@ and the unique identifier is the resource ID. Example: @table/my-table@ .
--
--
--     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the resource ID. Example: @table/my-table/index/my-table-index@ .
--
--
--     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .
--
--
-- * 'startTime' - The inclusive start time of the time range for the forecast data to get. The date and time can be at most 56 days before the current date and time.
-- * 'serviceNamespace' - The namespace of the AWS service.
-- * 'scalingPlanName' - The name of the scaling plan.
-- * 'endTime' - The exclusive end time of the time range for the forecast data to get. The maximum time duration between the start and end time is seven days.
--
-- Although this parameter can accept a date and time that is more than two days in the future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for periods of two days in advance.
-- * 'forecastDataType' - The type of forecast data to get.
--
--
--     * @LoadForecast@ : The load metric forecast.
--
--
--     * @CapacityForecast@ : The capacity forecast.
--
--
--     * @ScheduledActionMinCapacity@ : The minimum capacity for each scheduled scaling action. This data is calculated as the larger of two values: the capacity forecast or the minimum capacity in the scaling instruction.
--
--
--     * @ScheduledActionMaxCapacity@ : The maximum capacity for each scheduled scaling action. The calculation used is determined by the predictive scaling maximum capacity behavior setting in the scaling instruction.
mkGetScalingPlanResourceForecastData ::
  -- | 'scalingPlanVersion'
  Lude.Integer ->
  -- | 'scalableDimension'
  ScalableDimension ->
  -- | 'resourceId'
  Lude.Text ->
  -- | 'startTime'
  Lude.Timestamp ->
  -- | 'serviceNamespace'
  ServiceNamespace ->
  -- | 'scalingPlanName'
  Lude.Text ->
  -- | 'endTime'
  Lude.Timestamp ->
  -- | 'forecastDataType'
  ForecastDataType ->
  GetScalingPlanResourceForecastData
mkGetScalingPlanResourceForecastData
  pScalingPlanVersion_
  pScalableDimension_
  pResourceId_
  pStartTime_
  pServiceNamespace_
  pScalingPlanName_
  pEndTime_
  pForecastDataType_ =
    GetScalingPlanResourceForecastData'
      { scalingPlanVersion =
          pScalingPlanVersion_,
        scalableDimension = pScalableDimension_,
        resourceId = pResourceId_,
        startTime = pStartTime_,
        serviceNamespace = pServiceNamespace_,
        scalingPlanName = pScalingPlanName_,
        endTime = pEndTime_,
        forecastDataType = pForecastDataType_
      }

-- | The version number of the scaling plan.
--
-- /Note:/ Consider using 'scalingPlanVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdScalingPlanVersion :: Lens.Lens' GetScalingPlanResourceForecastData Lude.Integer
gsprfdScalingPlanVersion = Lens.lens (scalingPlanVersion :: GetScalingPlanResourceForecastData -> Lude.Integer) (\s a -> s {scalingPlanVersion = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdScalingPlanVersion "Use generic-lens or generic-optics with 'scalingPlanVersion' instead." #-}

-- | The scalable dimension for the resource.
--
-- /Note:/ Consider using 'scalableDimension' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdScalableDimension :: Lens.Lens' GetScalingPlanResourceForecastData ScalableDimension
gsprfdScalableDimension = Lens.lens (scalableDimension :: GetScalingPlanResourceForecastData -> ScalableDimension) (\s a -> s {scalableDimension = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdScalableDimension "Use generic-lens or generic-optics with 'scalableDimension' instead." #-}

-- | The ID of the resource. This string consists of the resource type and unique identifier.
--
--
--     * Auto Scaling group - The resource type is @autoScalingGroup@ and the unique identifier is the name of the Auto Scaling group. Example: @autoScalingGroup/my-asg@ .
--
--
--     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .
--
--
--     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .
--
--
--     * DynamoDB table - The resource type is @table@ and the unique identifier is the resource ID. Example: @table/my-table@ .
--
--
--     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the resource ID. Example: @table/my-table/index/my-table-index@ .
--
--
--     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .
--
--
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdResourceId :: Lens.Lens' GetScalingPlanResourceForecastData Lude.Text
gsprfdResourceId = Lens.lens (resourceId :: GetScalingPlanResourceForecastData -> Lude.Text) (\s a -> s {resourceId = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | The inclusive start time of the time range for the forecast data to get. The date and time can be at most 56 days before the current date and time.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdStartTime :: Lens.Lens' GetScalingPlanResourceForecastData Lude.Timestamp
gsprfdStartTime = Lens.lens (startTime :: GetScalingPlanResourceForecastData -> Lude.Timestamp) (\s a -> s {startTime = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The namespace of the AWS service.
--
-- /Note:/ Consider using 'serviceNamespace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdServiceNamespace :: Lens.Lens' GetScalingPlanResourceForecastData ServiceNamespace
gsprfdServiceNamespace = Lens.lens (serviceNamespace :: GetScalingPlanResourceForecastData -> ServiceNamespace) (\s a -> s {serviceNamespace = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdServiceNamespace "Use generic-lens or generic-optics with 'serviceNamespace' instead." #-}

-- | The name of the scaling plan.
--
-- /Note:/ Consider using 'scalingPlanName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdScalingPlanName :: Lens.Lens' GetScalingPlanResourceForecastData Lude.Text
gsprfdScalingPlanName = Lens.lens (scalingPlanName :: GetScalingPlanResourceForecastData -> Lude.Text) (\s a -> s {scalingPlanName = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdScalingPlanName "Use generic-lens or generic-optics with 'scalingPlanName' instead." #-}

-- | The exclusive end time of the time range for the forecast data to get. The maximum time duration between the start and end time is seven days.
--
-- Although this parameter can accept a date and time that is more than two days in the future, the availability of forecast data has limits. AWS Auto Scaling only issues forecasts for periods of two days in advance.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdEndTime :: Lens.Lens' GetScalingPlanResourceForecastData Lude.Timestamp
gsprfdEndTime = Lens.lens (endTime :: GetScalingPlanResourceForecastData -> Lude.Timestamp) (\s a -> s {endTime = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The type of forecast data to get.
--
--
--     * @LoadForecast@ : The load metric forecast.
--
--
--     * @CapacityForecast@ : The capacity forecast.
--
--
--     * @ScheduledActionMinCapacity@ : The minimum capacity for each scheduled scaling action. This data is calculated as the larger of two values: the capacity forecast or the minimum capacity in the scaling instruction.
--
--
--     * @ScheduledActionMaxCapacity@ : The maximum capacity for each scheduled scaling action. The calculation used is determined by the predictive scaling maximum capacity behavior setting in the scaling instruction.
--
--
--
-- /Note:/ Consider using 'forecastDataType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdForecastDataType :: Lens.Lens' GetScalingPlanResourceForecastData ForecastDataType
gsprfdForecastDataType = Lens.lens (forecastDataType :: GetScalingPlanResourceForecastData -> ForecastDataType) (\s a -> s {forecastDataType = a} :: GetScalingPlanResourceForecastData)
{-# DEPRECATED gsprfdForecastDataType "Use generic-lens or generic-optics with 'forecastDataType' instead." #-}

instance Lude.AWSRequest GetScalingPlanResourceForecastData where
  type
    Rs GetScalingPlanResourceForecastData =
      GetScalingPlanResourceForecastDataResponse
  request = Req.postJSON autoScalingPlansService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetScalingPlanResourceForecastDataResponse'
            Lude.<$> (x Lude..?> "Datapoints" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetScalingPlanResourceForecastData where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AnyScaleScalingPlannerFrontendService.GetScalingPlanResourceForecastData" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON GetScalingPlanResourceForecastData where
  toJSON GetScalingPlanResourceForecastData' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("ScalingPlanVersion" Lude..= scalingPlanVersion),
            Lude.Just ("ScalableDimension" Lude..= scalableDimension),
            Lude.Just ("ResourceId" Lude..= resourceId),
            Lude.Just ("StartTime" Lude..= startTime),
            Lude.Just ("ServiceNamespace" Lude..= serviceNamespace),
            Lude.Just ("ScalingPlanName" Lude..= scalingPlanName),
            Lude.Just ("EndTime" Lude..= endTime),
            Lude.Just ("ForecastDataType" Lude..= forecastDataType)
          ]
      )

instance Lude.ToPath GetScalingPlanResourceForecastData where
  toPath = Lude.const "/"

instance Lude.ToQuery GetScalingPlanResourceForecastData where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkGetScalingPlanResourceForecastDataResponse' smart constructor.
data GetScalingPlanResourceForecastDataResponse = GetScalingPlanResourceForecastDataResponse'
  { -- | The data points to return.
    datapoints :: [Datapoint],
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetScalingPlanResourceForecastDataResponse' with the minimum fields required to make a request.
--
-- * 'datapoints' - The data points to return.
-- * 'responseStatus' - The response status code.
mkGetScalingPlanResourceForecastDataResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  GetScalingPlanResourceForecastDataResponse
mkGetScalingPlanResourceForecastDataResponse pResponseStatus_ =
  GetScalingPlanResourceForecastDataResponse'
    { datapoints =
        Lude.mempty,
      responseStatus = pResponseStatus_
    }

-- | The data points to return.
--
-- /Note:/ Consider using 'datapoints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdrsDatapoints :: Lens.Lens' GetScalingPlanResourceForecastDataResponse [Datapoint]
gsprfdrsDatapoints = Lens.lens (datapoints :: GetScalingPlanResourceForecastDataResponse -> [Datapoint]) (\s a -> s {datapoints = a} :: GetScalingPlanResourceForecastDataResponse)
{-# DEPRECATED gsprfdrsDatapoints "Use generic-lens or generic-optics with 'datapoints' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsprfdrsResponseStatus :: Lens.Lens' GetScalingPlanResourceForecastDataResponse Lude.Int
gsprfdrsResponseStatus = Lens.lens (responseStatus :: GetScalingPlanResourceForecastDataResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetScalingPlanResourceForecastDataResponse)
{-# DEPRECATED gsprfdrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
