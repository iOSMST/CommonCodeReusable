#
#  Be sure to run `pod spec lint TestLogging.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
 s.name         = "TestLogging"
 s.version      = "0.0.1"
 s.summary      = "test"
 s.description  = "test app"
 s.homepage     = "http://www.mindsparktechnologies.com"
 s.license      = "MIT"
 s.author      = "Jegatheesh"
 s.platform     = :ios, "8.0" 
 s.source       = { :git => "https://github.com/iOSMST/CommonCodeReusable.git", :tag => "0.0.1" }
 s.source_files = "TestLogging/*.swift"
 s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
end
