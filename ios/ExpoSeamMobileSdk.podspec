require 'json'

package = JSON.parse(File.read(File.join(__dir__, '..', 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'ExpoSeamMobileSdk'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.platforms      = {
    :ios => '15.0',
    :tvos => '15.0'
  }
  s.swift_version  = '5.10'
  s.source         = { git: 'https://github.com/Rustam-Hashymov/seam-mobile-sdk' }

  s.dependency 'ExpoModulesCore'
  s.dependency 'SeamSDK'
#   s.exclude_files = '**/*-Swift.h'
  s.static_framework = true

  s.ios.deployment_target = '15.1'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
  }

  s.source_files = "**/*.{h,m,mm,swift,hpp,cpp}"
end
