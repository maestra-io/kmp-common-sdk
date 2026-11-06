# Maestra Common KMP library for Maestra SDK

This repository contains the source code for the common Kotlin Multiplatform (KMP) library used by the [Maestra Android SDK](https://github.com/maestra-io/android-sdk) and [Maestra iOS SDK](https://github.com/maestra-io/ios-sdk).

## About this library

This library is intended for internal use by the Maestra mobile SDKs. It contains shared logic for features.

**As a user of the Maestra platform, you most likely do not need to use this library directly.** Instead, please refer to the documentation for the respective platform-specific SDKs:

*   [Android SDK Documentation](https://developers.maestra.io/docs/android-sdk-initialization)
*   [iOS SDK Documentation](https://developers.maestra.io/docs/ios-sdk-initialization)

## Building the project

If you wish to contribute to the development of this library, you can build it using the following instructions.

### Android

The Android artifact is a standard `.aar` library. You can build it using Gradle:

```bash
./gradlew :mindbox-common:assembleRelease
```

The output will be located in `mindbox-common/build/outputs/aar/`.

### iOS

The iOS artifact is an `XCFramework`. To build it, run the following script from the root of the repository:

```bash
./make-ios-framework.sh
```

The output will be located in `mindbox-common/build/XCFrameworks/release/`.
