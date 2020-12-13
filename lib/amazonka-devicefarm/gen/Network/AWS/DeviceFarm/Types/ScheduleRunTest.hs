{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ScheduleRunTest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ScheduleRunTest
  ( ScheduleRunTest (..),

    -- * Smart constructor
    mkScheduleRunTest,

    -- * Lenses
    srtTestSpecARN,
    srtTestPackageARN,
    srtParameters,
    srtFilter,
    srtType,
  )
where

import Network.AWS.DeviceFarm.Types.TestType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents test settings. This data structure is passed in as the test parameter to ScheduleRun. For an example of the JSON request syntax, see 'ScheduleRun' .
--
-- /See:/ 'mkScheduleRunTest' smart constructor.
data ScheduleRunTest = ScheduleRunTest'
  { -- | The ARN of the YAML-formatted test specification.
    testSpecARN :: Lude.Maybe Lude.Text,
    -- | The ARN of the uploaded test to be run.
    testPackageARN :: Lude.Maybe Lude.Text,
    -- | The test's parameters, such as test framework parameters and fixture settings. Parameters are represented by name-value pairs of strings.
    --
    -- For all tests:
    --
    --     * @app_performance_monitoring@ : Performance monitoring is enabled by default. Set this parameter to false to disable it.
    --
    --
    -- For Calabash tests:
    --
    --     * profile: A cucumber profile (for example, @my_profile_name@ ).
    --
    --
    --     * tags: You can limit execution to features or scenarios that have (or don't have) certain tags (for example, @smoke or @smoke,~@wip).
    --
    --
    -- For Appium tests (all types):
    --
    --     * appium_version: The Appium version. Currently supported values are 1.6.5 (and later), latest, and default.
    --
    --     * latest runs the latest Appium version supported by Device Farm (1.9.1).
    --
    --
    --     * For default, Device Farm selects a compatible version of Appium for the device. The current behavior is to run 1.7.2 on Android devices and iOS 9 and earlier and 1.7.2 for iOS 10 and later.
    --
    --
    --     * This behavior is subject to change.
    --
    --
    --
    --
    -- For fuzz tests (Android only):
    --
    --     * event_count: The number of events, between 1 and 10000, that the UI fuzz test should perform.
    --
    --
    --     * throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should wait between events.
    --
    --
    --     * seed: A seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.
    --
    --
    -- For Explorer tests:
    --
    --     * username: A user name to use if the Explorer encounters a login form. If not supplied, no user name is inserted.
    --
    --
    --     * password: A password to use if the Explorer encounters a login form. If not supplied, no password is inserted.
    --
    --
    -- For Instrumentation:
    --
    --     * filter: A test filter string. Examples:
    --
    --     * Running a single test case: @com.android.abc.Test1@
    --
    --
    --     * Running a single test: @com.android.abc.Test1#smoke@
    --
    --
    --     * Running multiple tests: @com.android.abc.Test1,com.android.abc.Test2@
    --
    --
    --
    --
    -- For XCTest and XCTestUI:
    --
    --     * filter: A test filter string. Examples:
    --
    --     * Running a single test class: @LoginTests@
    --
    --
    --     * Running a multiple test classes: @LoginTests,SmokeTests@
    --
    --
    --     * Running a single test: @LoginTests/testValid@
    --
    --
    --     * Running multiple tests: @LoginTests/testValid,LoginTests/testInvalid@
    --
    --
    --
    --
    -- For UIAutomator:
    --
    --     * filter: A test filter string. Examples:
    --
    --     * Running a single test case: @com.android.abc.Test1@
    --
    --
    --     * Running a single test: @com.android.abc.Test1#smoke@
    --
    --
    --     * Running multiple tests: @com.android.abc.Test1,com.android.abc.Test2@
    parameters :: Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    -- | The test's filter.
    filter :: Lude.Maybe Lude.Text,
    -- | The test's type.
    --
    -- Must be one of the following values:
    --
    --     * BUILTIN_FUZZ
    --
    --
    --     * BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with it and capturing screenshots at the same time.
    --
    --
    --     * APPIUM_JAVA_JUNIT
    --
    --
    --     * APPIUM_JAVA_TESTNG
    --
    --
    --     * APPIUM_PYTHON
    --
    --
    --     * APPIUM_NODE
    --
    --
    --     * APPIUM_RUBY
    --
    --
    --     * APPIUM_WEB_JAVA_JUNIT
    --
    --
    --     * APPIUM_WEB_JAVA_TESTNG
    --
    --
    --     * APPIUM_WEB_PYTHON
    --
    --
    --     * APPIUM_WEB_NODE
    --
    --
    --     * APPIUM_WEB_RUBY
    --
    --
    --     * CALABASH
    --
    --
    --     * INSTRUMENTATION
    --
    --
    --     * UIAUTOMATION
    --
    --
    --     * UIAUTOMATOR
    --
    --
    --     * XCTEST
    --
    --
    --     * XCTEST_UI
    type' :: TestType
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ScheduleRunTest' with the minimum fields required to make a request.
--
-- * 'testSpecARN' - The ARN of the YAML-formatted test specification.
-- * 'testPackageARN' - The ARN of the uploaded test to be run.
-- * 'parameters' - The test's parameters, such as test framework parameters and fixture settings. Parameters are represented by name-value pairs of strings.
--
-- For all tests:
--
--     * @app_performance_monitoring@ : Performance monitoring is enabled by default. Set this parameter to false to disable it.
--
--
-- For Calabash tests:
--
--     * profile: A cucumber profile (for example, @my_profile_name@ ).
--
--
--     * tags: You can limit execution to features or scenarios that have (or don't have) certain tags (for example, @smoke or @smoke,~@wip).
--
--
-- For Appium tests (all types):
--
--     * appium_version: The Appium version. Currently supported values are 1.6.5 (and later), latest, and default.
--
--     * latest runs the latest Appium version supported by Device Farm (1.9.1).
--
--
--     * For default, Device Farm selects a compatible version of Appium for the device. The current behavior is to run 1.7.2 on Android devices and iOS 9 and earlier and 1.7.2 for iOS 10 and later.
--
--
--     * This behavior is subject to change.
--
--
--
--
-- For fuzz tests (Android only):
--
--     * event_count: The number of events, between 1 and 10000, that the UI fuzz test should perform.
--
--
--     * throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should wait between events.
--
--
--     * seed: A seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.
--
--
-- For Explorer tests:
--
--     * username: A user name to use if the Explorer encounters a login form. If not supplied, no user name is inserted.
--
--
--     * password: A password to use if the Explorer encounters a login form. If not supplied, no password is inserted.
--
--
-- For Instrumentation:
--
--     * filter: A test filter string. Examples:
--
--     * Running a single test case: @com.android.abc.Test1@
--
--
--     * Running a single test: @com.android.abc.Test1#smoke@
--
--
--     * Running multiple tests: @com.android.abc.Test1,com.android.abc.Test2@
--
--
--
--
-- For XCTest and XCTestUI:
--
--     * filter: A test filter string. Examples:
--
--     * Running a single test class: @LoginTests@
--
--
--     * Running a multiple test classes: @LoginTests,SmokeTests@
--
--
--     * Running a single test: @LoginTests/testValid@
--
--
--     * Running multiple tests: @LoginTests/testValid,LoginTests/testInvalid@
--
--
--
--
-- For UIAutomator:
--
--     * filter: A test filter string. Examples:
--
--     * Running a single test case: @com.android.abc.Test1@
--
--
--     * Running a single test: @com.android.abc.Test1#smoke@
--
--
--     * Running multiple tests: @com.android.abc.Test1,com.android.abc.Test2@
--
--
--
--
-- * 'filter' - The test's filter.
-- * 'type'' - The test's type.
--
-- Must be one of the following values:
--
--     * BUILTIN_FUZZ
--
--
--     * BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with it and capturing screenshots at the same time.
--
--
--     * APPIUM_JAVA_JUNIT
--
--
--     * APPIUM_JAVA_TESTNG
--
--
--     * APPIUM_PYTHON
--
--
--     * APPIUM_NODE
--
--
--     * APPIUM_RUBY
--
--
--     * APPIUM_WEB_JAVA_JUNIT
--
--
--     * APPIUM_WEB_JAVA_TESTNG
--
--
--     * APPIUM_WEB_PYTHON
--
--
--     * APPIUM_WEB_NODE
--
--
--     * APPIUM_WEB_RUBY
--
--
--     * CALABASH
--
--
--     * INSTRUMENTATION
--
--
--     * UIAUTOMATION
--
--
--     * UIAUTOMATOR
--
--
--     * XCTEST
--
--
--     * XCTEST_UI
mkScheduleRunTest ::
  -- | 'type''
  TestType ->
  ScheduleRunTest
mkScheduleRunTest pType_ =
  ScheduleRunTest'
    { testSpecARN = Lude.Nothing,
      testPackageARN = Lude.Nothing,
      parameters = Lude.Nothing,
      filter = Lude.Nothing,
      type' = pType_
    }

-- | The ARN of the YAML-formatted test specification.
--
-- /Note:/ Consider using 'testSpecARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srtTestSpecARN :: Lens.Lens' ScheduleRunTest (Lude.Maybe Lude.Text)
srtTestSpecARN = Lens.lens (testSpecARN :: ScheduleRunTest -> Lude.Maybe Lude.Text) (\s a -> s {testSpecARN = a} :: ScheduleRunTest)
{-# DEPRECATED srtTestSpecARN "Use generic-lens or generic-optics with 'testSpecARN' instead." #-}

-- | The ARN of the uploaded test to be run.
--
-- /Note:/ Consider using 'testPackageARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srtTestPackageARN :: Lens.Lens' ScheduleRunTest (Lude.Maybe Lude.Text)
srtTestPackageARN = Lens.lens (testPackageARN :: ScheduleRunTest -> Lude.Maybe Lude.Text) (\s a -> s {testPackageARN = a} :: ScheduleRunTest)
{-# DEPRECATED srtTestPackageARN "Use generic-lens or generic-optics with 'testPackageARN' instead." #-}

-- | The test's parameters, such as test framework parameters and fixture settings. Parameters are represented by name-value pairs of strings.
--
-- For all tests:
--
--     * @app_performance_monitoring@ : Performance monitoring is enabled by default. Set this parameter to false to disable it.
--
--
-- For Calabash tests:
--
--     * profile: A cucumber profile (for example, @my_profile_name@ ).
--
--
--     * tags: You can limit execution to features or scenarios that have (or don't have) certain tags (for example, @smoke or @smoke,~@wip).
--
--
-- For Appium tests (all types):
--
--     * appium_version: The Appium version. Currently supported values are 1.6.5 (and later), latest, and default.
--
--     * latest runs the latest Appium version supported by Device Farm (1.9.1).
--
--
--     * For default, Device Farm selects a compatible version of Appium for the device. The current behavior is to run 1.7.2 on Android devices and iOS 9 and earlier and 1.7.2 for iOS 10 and later.
--
--
--     * This behavior is subject to change.
--
--
--
--
-- For fuzz tests (Android only):
--
--     * event_count: The number of events, between 1 and 10000, that the UI fuzz test should perform.
--
--
--     * throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should wait between events.
--
--
--     * seed: A seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.
--
--
-- For Explorer tests:
--
--     * username: A user name to use if the Explorer encounters a login form. If not supplied, no user name is inserted.
--
--
--     * password: A password to use if the Explorer encounters a login form. If not supplied, no password is inserted.
--
--
-- For Instrumentation:
--
--     * filter: A test filter string. Examples:
--
--     * Running a single test case: @com.android.abc.Test1@
--
--
--     * Running a single test: @com.android.abc.Test1#smoke@
--
--
--     * Running multiple tests: @com.android.abc.Test1,com.android.abc.Test2@
--
--
--
--
-- For XCTest and XCTestUI:
--
--     * filter: A test filter string. Examples:
--
--     * Running a single test class: @LoginTests@
--
--
--     * Running a multiple test classes: @LoginTests,SmokeTests@
--
--
--     * Running a single test: @LoginTests/testValid@
--
--
--     * Running multiple tests: @LoginTests/testValid,LoginTests/testInvalid@
--
--
--
--
-- For UIAutomator:
--
--     * filter: A test filter string. Examples:
--
--     * Running a single test case: @com.android.abc.Test1@
--
--
--     * Running a single test: @com.android.abc.Test1#smoke@
--
--
--     * Running multiple tests: @com.android.abc.Test1,com.android.abc.Test2@
--
--
--
--
--
-- /Note:/ Consider using 'parameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srtParameters :: Lens.Lens' ScheduleRunTest (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
srtParameters = Lens.lens (parameters :: ScheduleRunTest -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {parameters = a} :: ScheduleRunTest)
{-# DEPRECATED srtParameters "Use generic-lens or generic-optics with 'parameters' instead." #-}

-- | The test's filter.
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srtFilter :: Lens.Lens' ScheduleRunTest (Lude.Maybe Lude.Text)
srtFilter = Lens.lens (filter :: ScheduleRunTest -> Lude.Maybe Lude.Text) (\s a -> s {filter = a} :: ScheduleRunTest)
{-# DEPRECATED srtFilter "Use generic-lens or generic-optics with 'filter' instead." #-}

-- | The test's type.
--
-- Must be one of the following values:
--
--     * BUILTIN_FUZZ
--
--
--     * BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with it and capturing screenshots at the same time.
--
--
--     * APPIUM_JAVA_JUNIT
--
--
--     * APPIUM_JAVA_TESTNG
--
--
--     * APPIUM_PYTHON
--
--
--     * APPIUM_NODE
--
--
--     * APPIUM_RUBY
--
--
--     * APPIUM_WEB_JAVA_JUNIT
--
--
--     * APPIUM_WEB_JAVA_TESTNG
--
--
--     * APPIUM_WEB_PYTHON
--
--
--     * APPIUM_WEB_NODE
--
--
--     * APPIUM_WEB_RUBY
--
--
--     * CALABASH
--
--
--     * INSTRUMENTATION
--
--
--     * UIAUTOMATION
--
--
--     * UIAUTOMATOR
--
--
--     * XCTEST
--
--
--     * XCTEST_UI
--
--
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srtType :: Lens.Lens' ScheduleRunTest TestType
srtType = Lens.lens (type' :: ScheduleRunTest -> TestType) (\s a -> s {type' = a} :: ScheduleRunTest)
{-# DEPRECATED srtType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Lude.ToJSON ScheduleRunTest where
  toJSON ScheduleRunTest' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("testSpecArn" Lude..=) Lude.<$> testSpecARN,
            ("testPackageArn" Lude..=) Lude.<$> testPackageARN,
            ("parameters" Lude..=) Lude.<$> parameters,
            ("filter" Lude..=) Lude.<$> filter,
            Lude.Just ("type" Lude..= type')
          ]
      )
