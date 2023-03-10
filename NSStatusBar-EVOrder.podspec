#
# Be sure to run `pod lib lint NSStatusBar-EVOrder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NSStatusBar-EVOrder'
  s.version          = '1.0.0'
  s.summary          = 'A very tiny library that allows define order for `NSStatusBarItem` inside `NSStatusBar`.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A very tiny library that allows define order and position for `NSStatusBarItem` inside `NSStatusBar`.
                       DESC

  s.homepage         = 'https://github.com/YongBaowang/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YongBaowang' => 'wangyongbao2009@hotmail.com' }
  s.source           = { :git => 'https://github.com/YongBaowang/NSStatusBar-EVOrder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :osx
  s.osx.deployment_target = "10.10"

  s.source_files = 'NSStatusBar-EVOrder/Classes/**/*'

  # s.resource_bundles = {
  #   'NSStatusBar-EVOrder' => ['NSStatusBar-EVOrder/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  # s.dependency 'AFNetworking', '~> 2.3'
end
