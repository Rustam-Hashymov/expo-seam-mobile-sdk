Pod::Spec.new do |spec|
  spec.name         = "SeamSDK"
  spec.license      = { :type => "MIT" }
  spec.homepage     = "https://seam.co"
  spec.documentation_url = "https://ios.seam.vc"
  spec.author                     = { 'Seam Labs, Inc.' => 'support@seam.co' }

  # Updated by Fastfile
  spec.version      = "0.0.1"
  spec.summary      = "Seam iOS SDK"
  spec.description  = <<-DESC
  Seam iOS SDK provides mobile key functionality for access control systems.
  DESC

  spec.source       = { :git => "https://github.com/seamapi/phone.git", :tag => "seam-phone-ios-v#{spec.version}" }

  spec.swift_version = '5.10'
  spec.ios.deployment_target = '15.0'

  spec.source_files  = "SeamSDK/**/*.{swift}"
  spec.exclude_files = "SeamSDK/SeamSDK.docc/**/*"

  spec.dependency "JSONModel", "1.8.0"
  spec.dependency "CocoaLumberjack", "3.8.5"
  spec.dependency "Mixpanel", "5.0.7"
  spec.dependency "BerTlv", "0.2.5"
  spec.dependency "Alamofire", "5.9.1"
  spec.dependency "VirgilCrypto", "7.0.1"
  
  # Include SeamSDK as a vendored framework for `pod install` in customer apps
  # libs/* is copied via the `copy_vendored_frameworks` Fastfile lane
  spec.vendored_frameworks = 'libs/Mobile_Keys_iOS_SDK/Release/SeosMobileKeysSDK.xcframework', 'libs/LatchSDK_iOS/LatchSDK.xcframework', 'SeamSDK.xcframework',
      'libs/SaltoKS/ClaySDK.xcframework', 'libs/SaltoKS/SaltoJustINMobileSDK.xcframework', 'libs/Dormakaba_Legic/LegicMobileSdk.xcframework'
end
