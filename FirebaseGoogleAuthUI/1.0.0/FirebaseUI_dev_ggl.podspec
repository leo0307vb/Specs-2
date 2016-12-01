Pod::Spec.new do |s|
  s.name         = 'FirebaseGoogleAuthUI'
  s.version      = '1.0.0'
  s.summary      = 'Google UI binding library for Firebase.'
  s.homepage     = 'https://github.com/firebase/FirebaseUI-iOS'
  s.license      = { :type => 'Apache 2.0' }
  s.author       = 'Firebase'
  s.source = { :git => "https://github.com/firebase/FirebaseUI-iOS.git" }
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.ios.framework = 'UIKit'
  s.tvos.framework = 'UIKit'
  s.requires_arc = true
  s.default_subspecs = 'Google'

  s.subspec 'Google' do |google|
    google.source_files = "FirebaseGoogleAuthUI/*.{h,m}"
    google.resources = "FirebaseGoogleAuthUI/{Resources,Strings}/*", "FirebaseGoogleAuthUI/*.xib"
    google.dependency 'FirebaseAuthUI/AuthBase'
    google.dependency 'GoogleSignIn', '~> 4.0'
  end
end