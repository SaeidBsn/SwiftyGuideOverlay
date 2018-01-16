Pod::Spec.new do |s|
s.name             = "SwiftyGuideOverlay"
s.version          = "1.0.0"
s.summary          = "App showcase and runtime tour"
s.homepage         = "https://github.com/saeid/SwiftyGuideOverlay"
s.license          = 'MIT'
s.author           = { "Saeid Basirnia" => "saeid.basirnia@gmail.com" }
s.source           = { :git => "https://github.com/saeid/SwiftyGuideOverlay.git", :tag => "1.0.0"}

s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
s.platform     = :ios
s.ios.deployment_target  = '8.0'
s.requires_arc = true

s.source_files = 'SwiftyGuideOverlay/*'
s.frameworks = 'UIKit'

end
