#
# Be sure to run `pod lib lint NavitiaSDKSandbox.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NavitiaSDK'
  s.version          = '0.2.0'
  s.summary          = 'Navitia client written in Swift 3'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ALPHA - Navitia client
Supported endpoints:
- places
- journeys
- departures
- stop_schedules
- all public transport objects
                       DESC

  s.homepage         = 'https://github.com/CanalTP/NavitiaSDK_ios'
  s.license          = { :type => 'GPLv3', :file => 'LICENSE.md' }
  s.author           = { 'Kisio Digital' => 'team.sdk@kisio.org' }
  s.source           = { :git => 'https://github.com/CanalTP/NavitiaSDK_ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'NavitiaSDK/Classes/**/*.swift'

  s.dependency 'Alamofire', '~> 4.0'
  s.dependency 'AlamofireObjectMapper', '~> 4.0'
end
