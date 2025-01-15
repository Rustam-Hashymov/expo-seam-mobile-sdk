# FOR DEVELOPERS

This file contains instructions for developers working on the Expo Seam Mobile SDK project, including setup for Android and iOS, as well as editing SDK files in Swift and Kotlin.

## Requirements

Before starting, make sure you have the following installed:
- **Node.js**: version 20.x or later
- **NPM**: version 9.x or later
- **Android Studio** (for Android development)
- **Xcode** (for iOS development)
- **CocoaPods**: minimum version 1.16.2

---

## How to Run the Project

### 1. Clone the Repository

Clone the project repository:

```
git clone https://github.com/your-repo/expo-seam-mobile-sdk.git
```

### 2. Install Dependencies

Run the following command to install dependencies:

```
npm i 
cd expo-seam-mobile-sdk/example
npm i
```

### 3. Run on Android

To run the project on Android, follow these steps:

1. Open Android Studio.
2. In the main menu, select Open and navigate to the android directory `expo-seam-mobile-sdk/example/android` of the project.
3. Ensure that the Android Virtual Device (AVD) is configured, or connect a physical device.
4. Run the project using the command:

```
npm run android
```

### 4. Run on iOS

To run the project on iOS, follow these steps:

1. Navigate to the `expo-seam-mobile-sdk/example/ios` and install pods using the command:

```
pod install --repo-update
```

2. Navigate to the `expo-seam-mobile-sdk/example/ios` directory and open the `.xcworkspace` file in Xcode. You can do this by running the following command:

```
open expo-seam-mobile-sdk/example/exposeammobilesdkexample.xcworkspace
```

Also you can run build from the command line:

```
npm run android
```

3. Select the target device and run the project. Don't forget to clean the build folder if you encounter any issues.

---

## How to Develop the SDK

### How to develop the SDK in Swift

To open SDK Swift files follow these steps:

1. At the root of the project, run the following command:

```
npm run open:ios
```

2. Open Pods folder in Xcode.
3. Navigate to the `Pods/Development Pods/ExpoSeamMobileSDK` folder.
4. Find the `ExpoSeamMobileModule.swift` file and start editing.

### To develop the SDK in Kotlin

To open SDK Kotlin files follow these steps:

1. At the root of the project, run the following command:

```
npm run open:android
```

2. Wait for the Gradle build to finish.
3. Open the `expo-seam-mobile-sdk/kotlin+java/expo.modules.seammobilesdk/ExpoSeamModileSdkModule.kt` and start editing.
