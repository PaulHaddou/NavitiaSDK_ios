Pod::Spec.new do |s|
  s.name = 'NavitiaSDK'
  s.version = '1.3.1'
  s.summary = 'Navitia client written in Swift 4.2'
  s.description = 'Navitia client'

  s.homepage = 'https://github.com/CanalTP/NavitiaSDK_ios'
  s.license = { :type => 'GPLv3', :file => 'LICENSE.md' }
  s.authors = { 'Kisio Digital' => 'team.sdk@kisio.org' }
  s.source = { :git => 'https://github.com/CanalTP/NavitiaSDK_ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'NavitiaSDK/Classes/**/*.swift', 'NavitiaSDK/Classes/**/*.h'
end
