Pod::Spec.new do |s|
  s.name         = "LatchSDK"
  s.version      = "1.0.0"
  s.summary      = "Latch Mobile SDK"
  s.homepage     = "http://EXAMPLE/YourLibrary"
  s.author       = { "Your Name" => "Your Email" }
  s.source = { :path => '.' }
  s.module_name = 'LatchSDK'
  s.requires_arc = true
  s.ios.deployment_target = '12.0'
  s.vendored_frameworks = "LatchSDK.xcframework"
end
