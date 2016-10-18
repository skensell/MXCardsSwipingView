#
# Be sure to run `pod lib lint MXCardsSwipingView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MXCardsSwipingView'
  s.version          = '0.2.0'
  s.summary          = 'A UIView offering Tinder style card swiping on iOS.'

  s.description      = <<-DESC
It's a lightweight `UIView` to extract the pan gesture and animations involved in the card swiping
paradigm which has become so popular. Other card-swiping libraries try to do too much IMO and make it
hard to customize. To use it, you simply instantiate a `MXCardsSwipingView` and enqueue cards. You can
enqueue more cards when its delegate methods are called.  And the card you enqueue can optionally conform to the
`MXSwipableCard` protocol to provide additional customizability (e.g. fading views in on swipe left or right).
                       DESC

  s.homepage         = 'https://github.com/skensell/MXCardsSwipingView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Scott Kensell' => 'skensell@gmail.com' }
  s.source           = { :git => 'https://github.com/skensell/MXCardsSwipingView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.source_files = 'MXCardsSwipingView/Classes/**/*'
  s.frameworks = 'UIKit'
end
