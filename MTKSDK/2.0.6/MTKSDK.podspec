#
# Be sure to run `pod lib lint MTKSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTKSDK'
  s.version          = '2.0.6'
  s.summary          = 'An SDK for HOT specific devices.'
  s.description      = <<-DESC
  An SDK for HOT specific devices.Through the SDK, you can communicate with a specific device and control the device.
                       DESC

  s.homepage         = 'https://github.com/jxsbin/MTKSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jxsbin' => 'jxsbin@163.com' }
#  s.source           = { :git => 'https://github.com/jxsbin/MTKSDK.git', :tag => s.version.to_s }
  s.source           = { :git => 'git@github.com:jxsbin/MTKSDK.git', :tag => s.version.to_s }
  
  s.swift_versions = '4.0'
  s.ios.deployment_target = '12.0'

  s.source_files = 'MTKSDK/Classes/**/*'
  
  s.dependency 'CocoaAsyncSocket'

  s.subspec 'Resources' do |spec|
    spec.resource_bundles = {
      'MTKSDK' => ['MTKSDK/Resources/*.*']
    }
  end
  
  s.user_target_xcconfig = {
      'GENERATE_INFOPLIST_FILE' => 'YES'
  }

  s.pod_target_xcconfig = {
      'GENERATE_INFOPLIST_FILE' => 'YES'
  }
  
end
