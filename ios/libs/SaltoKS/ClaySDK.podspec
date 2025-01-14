Pod::Spec.new do |spec|
    spec.name                       = "ClaySDK"
    spec.version                    = '2.1.0'
    spec.summary                    = 'The Clay mobile SDK make it easy to build a seamless door opening experience in your application.'
    spec.description                = <<-DESC
    This SDK for iOS contains the most up-to-date frameworks for integrating Digital Key technology into your own iOS applications. It will setup the necessary security to communicate with Connect API, and unlock locks with encrypted Digital Keys returned by the Connect API. The SDK for iOS includes iOS libraries, developer documentation and a sample Xcode project to get you up and running quickly and easily.
                         DESC

    spec.homepage                   = 'https://gitlab.com/claysolutions/public/clay-sdk'
    spec.license                    = { :type => 'MIT', :file => 'LICENSE' }
    spec.author                     = { 'Jakov' => 'jakov@my-clay.com', 'Arthur' => 'arthur@my-clay.com', 'Victor' => 'victor@my-clay.com'}
    spec.source = { :path => '.' }
    spec.ios.deployment_target      = '12.0'
    spec.vendored_frameworks        = 'ClaySDK.xcframework', 'SaltoJustINMobileSDK.xcframework'
    spec.dependency 'VirgilCrypto', '7.0.1'
end
