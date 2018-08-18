#
#  Be sure to run `pod spec lint HYRouter.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |s|

  s.name         = "HYRouter"
  s.version      = "1.0.0"
  s.summary      = "HYRouter is a Swift Router framework."
  s.homepage     = "https://github.com/CranberryYam/HYRouter"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Henry Yi" => "1113145615yihl@gmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/CranberryYam/HYRouter.git", :tag => "#{s.version}" }

  s.source_files = "HYRouter/Classes/**/*"
  # s.exclude_files = "Classes/Exclude"

  # s.frameworks   = 'UIKit', 'Foundation'
  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  s.ios.deployment_target = "8.0"
end
