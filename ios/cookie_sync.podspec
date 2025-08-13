Pod::Spec.new do |s|
  s.name             = 'cookie_sync'
  s.version          = '0.0.1'
  s.summary          = 'Simple cross-platform cookie sync for Flutter WebViews.'
  s.description      = <<-DESC
A Flutter plugin to force cookie persistence for WebViews on Android and iOS.
  DESC
  s.homepage         = 'https://github.com/mahmood541996/cookie_sync.git'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Mahmoud Abd Elrazek Ali' => 'mahmoud.abdulrazek@troylab.net' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency       'Flutter'
  s.platform         = :ios, '9.0'
  s.swift_version    = '5.0'
end