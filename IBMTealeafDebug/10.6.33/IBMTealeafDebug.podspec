Pod::Spec.new do |s|
  s.name = 'IBMTealeafDebug'
  s.version = '10.6.33'
  s.author = 'Acoustic, L.P.'
  s.license = { :type => 'Proprietary, Acoustic, L.P.', :file => 'Licenses/License' }
  s.homepage = 'https://github.com/acoustic-analytics/IBMTealeaf'
  s.summary = 'Acoustic Tealeaf EOCore iOS SDK'
  s.platforms = { :ios => "9.0" }
  s.source = { :git => 'https://github.com/acoustic-analytics/IBMTealeaf.git', :tag => '10.6.33'}
  s.default_subspec = 'Core'
  s.subspec 'Core' do |core|
    core.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
    core.library = 'z'
    core.resource = "SDKs/iOS/Debug/Tealeaf.framework/TLFResources.bundle"
    core.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Debug/Tealeaf.framework/Headers/"/** ' }
    core.vendored_frameworks = 'SDKs/iOS/Debug/Tealeaf.framework'
    core.dependency 'EOCoreDebug'
  end
  s.subspec 'MD5' do |md5|
    md5.dependency 'TealeafMD5'
    md5.dependency 'IBMTealeaf/Core'
  end
  s.subspec 'SHA512' do |sha512|
    sha512.dependency 'TealeafSHA2'
    sha512.dependency 'IBMTealeaf/Core'
  end
end
