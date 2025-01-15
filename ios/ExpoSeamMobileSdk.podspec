require 'json'

package = JSON.parse(File.read(File.join(__dir__, '..', 'package.json')))

Pod::Spec.new do |s|
    s.name             = 'ExpoSeamMobileSdk'
    s.version          = '0.0.1'
    s.summary          = 'Seam Expo React Native SDK'
    s.description      = <<-DESC
    Seam Expo React Native SDK provides mobile key functionality for access control systems.
                       DESC
    s.homepage         = "https://seam.co"
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Seam Labs, Inc.' => 'support@seam.co' }

    # Flutter.framework does not contain a i386 slice.
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    s.swift_version = '5.10'
    s.ios.deployment_target = '15.0'
    s.static_framework = true

    s.source           = { :path => '.' }
    s.source_files = 'Classes/**/*'
    s.dependency 'ExpoModulesCore'
    s.dependency 'VirgilCrypto', '7.0.1'
    s.dependency 'VirgilCryptoFoundation', '0.17.1'
    s.dependency 'JSONModel', '1.8.0'
    s.dependency 'CocoaLumberjack', '3.8.5'
    s.dependency 'Mixpanel', '5.0.7'
    s.dependency 'BerTlv', '0.2.5'
    s.dependency 'Alamofire', '5.9.1'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
  }

    # Include SeamSDK as a vendored framework for `pod install` in customer apps
    s.vendored_frameworks = 'libs/Mobile_Keys_iOS_SDK/Release/SeosMobileKeysSDK.xcframework',
    'libs/LatchSDK_iOS/LatchSDK.xcframework',
    'libs/SeamSDK.xcframework',
    'libs/SaltoKS/ClaySDK.xcframework',
    'libs/SaltoKS/SaltoJustINMobileSDK.xcframework',
    'libs/Dormakaba_Legic/LegicMobileSdk.xcframework'
end
